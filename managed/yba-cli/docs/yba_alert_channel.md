## yba alert channel

Manage YugabyteDB Anywhere alert notification channels

### Synopsis

Manage YugabyteDB Anywhere alert notification channels 

```
yba alert channel [flags]
```

### Options

```
  -h, --help   help for channel
```

### Options inherited from parent commands

```
  -a, --apiToken string    YugabyteDB Anywhere api token.
      --ca-cert string     CA certificate file path for secure connection to YugabyteDB Anywhere. Required when the endpoint is https and --insecure is not set.
      --config string      Full path to a specific configuration file for YBA CLI. If provided, this takes precedence over the directory specified via --directory, and the generated files are added to the same path. If not provided, the CLI will look for '.yba-cli.yaml' in the directory specified by --directory. Defaults to '$HOME/.yba-cli/.yba-cli.yaml'.
      --debug              Use debug mode, same as --logLevel debug.
      --directory string   Directory containing YBA CLI configuration and generated files. If specified, the CLI will look for a configuration file named '.yba-cli.yaml' in this directory. Defaults to '$HOME/.yba-cli/'.
      --disable-color      Disable colors in output. (default false)
  -H, --host string        YugabyteDB Anywhere Host (default "http://localhost:9000")
      --insecure           Allow insecure connections to YugabyteDB Anywhere. Value ignored for http endpoints. Defaults to false for https.
  -l, --logLevel string    Select the desired log level format. Allowed values: debug, info, warn, error, fatal. (default "info")
  -o, --output string      Select the desired output format. Allowed values: table, json, pretty. (default "table")
      --timeout duration   Wait command timeout, example: 5m, 1h. (default 168h0m0s)
      --wait               Wait until the task is completed, otherwise it will exit immediately. (default true)
```

### SEE ALSO

* [yba alert](yba_alert.md)	 - Manage YugabyteDB Anywhere alerts
* [yba alert channel delete](yba_alert_channel_delete.md)	 - Delete YugabyteDB Anywhere alert channel
* [yba alert channel describe](yba_alert_channel_describe.md)	 - Describe a YugabyteDB Anywhere alert channel
* [yba alert channel email](yba_alert_channel_email.md)	 - Manage YugabyteDB Anywhere email alert notification channels
* [yba alert channel list](yba_alert_channel_list.md)	 - List YugabyteDB Anywhere alert channels
* [yba alert channel pagerduty](yba_alert_channel_pagerduty.md)	 - Manage YugabyteDB Anywhere PagerDuty alert notification channels
* [yba alert channel slack](yba_alert_channel_slack.md)	 - Manage YugabyteDB Anywhere slack alert notification channels
* [yba alert channel webhook](yba_alert_channel_webhook.md)	 - Manage YugabyteDB Anywhere webhook alert notification channels

