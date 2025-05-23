// tslint:disable
/**
 * Yugabyte Cloud
 * YugabyteDB as a Service
 *
 * The version of the OpenAPI document: v1
 * Contact: support@yugabyte.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */




/**
 * Details of issues in Schema Analysis Report
 * @export
 * @interface AnalysisIssueDetails
 */
export interface AnalysisIssueDetails  {
  /**
   * 
   * @type {string}
   * @memberof AnalysisIssueDetails
   */
  issueType?: string;
  /**
   * 
   * @type {string}
   * @memberof AnalysisIssueDetails
   */
  objectName?: string;
  /**
   * 
   * @type {string}
   * @memberof AnalysisIssueDetails
   */
  reason?: string;
  /**
   * 
   * @type {string}
   * @memberof AnalysisIssueDetails
   */
  sqlStatement?: string;
  /**
   * 
   * @type {string}
   * @memberof AnalysisIssueDetails
   */
  filePath?: string;
  /**
   * 
   * @type {string}
   * @memberof AnalysisIssueDetails
   */
  suggestion?: string;
  /**
   * 
   * @type {string}
   * @memberof AnalysisIssueDetails
   */
  GH?: string;
  /**
   * 
   * @type {string}
   * @memberof AnalysisIssueDetails
   */
  docs_link?: string;
  /**
   * 
   * @type {string[]}
   * @memberof AnalysisIssueDetails
   */
  minimum_versions_fixed_in?: string[];
}



