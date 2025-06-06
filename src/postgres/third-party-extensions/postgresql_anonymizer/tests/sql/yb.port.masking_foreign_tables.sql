-- This test cannot be run in a single transaction
-- This test must be run on a database named 'contrib_regression'
-- YB: the database doesn't need to be 'contrib_regression'

CREATE EXTENSION IF NOT EXISTS file_fdw;
CREATE SERVER files FOREIGN DATA WRAPPER file_fdw;
-- YB: in mac /etc/passwd contains comments which are not in correct
-- csv format, so we have our own model yb_passwd file.
\getenv yb_abs_srcdir PG_ABS_SRCDIR
\set yb_passwd_file :yb_abs_srcdir '/tmp/yb_passwd'
CREATE FOREIGN TABLE passwd (
  login text,
  passwd text,
  uid int,
  gid int,
  username text,
  homedir text,
  shell text)
SERVER files
OPTIONS (filename :'yb_passwd_file', format 'csv', delimiter ':'); -- YB: Use different file

-- STEP 1 : Activate the masking engine
CREATE EXTENSION IF NOT EXISTS anon CASCADE;

BEGIN; -- YB: Workaround for read time error, check #25665
SET yb_non_ddl_txn_for_sys_tables_allowed = true; -- YB: next statement updates pg_seclabel and is not a DDL
SELECT anon.start_dynamic_masking();
COMMIT; -- YB: Workaround for read time error, check #25665

-- STEP 2 : Declare a masked user
CREATE ROLE skynet LOGIN SUPERUSER PASSWORD 'x';
SECURITY LABEL FOR anon ON ROLE skynet IS 'MASKED';

-- STEP 3 : Declare the masking rules
SECURITY LABEL FOR anon ON COLUMN passwd.username
IS 'MASKED WITH FUNCTION anon.fake_last_name()';

-- STEP 4 : Connect with the masked user
\! PGPASSWORD=x ${YB_BUILD_ROOT}/postgres/bin/ysqlsh -U skynet -c "SELECT count(*)=0 FROM passwd WHERE username = 'root';" # YB: Use ysqlsh and the default database

-- STOP

SELECT anon.stop_dynamic_masking();

--  CLEAN

DROP EXTENSION anon CASCADE;

REASSIGN OWNED BY skynet TO postgres;
DROP OWNED BY skynet CASCADE;
DROP ROLE skynet;
DROP FOREIGN TABLE passwd;
DROP SERVER files CASCADE;
DROP EXTENSION file_fdw;
