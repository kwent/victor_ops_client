# VictorOpsClient::ReportingApi

All URIs are relative to *https://api.victorops.com*

| Method                                                                                                     | HTTP request                                     | Description                        |
| ---------------------------------------------------------------------------------------------------------- | ------------------------------------------------ | ---------------------------------- |
| [**api_reporting_v1_team_team_oncall_log_get**](ReportingApi.md#api_reporting_v1_team_team_oncall_log_get) | **GET** /api-reporting/v1/team/{team}/oncall/log | A list of shift changes for a team |
| [**api_reporting_v2_incidents_get**](ReportingApi.md#api_reporting_v2_incidents_get)                       | **GET** /api-reporting/v2/incidents              | Get/search incident history        |

# **api_reporting_v1_team_team_oncall_log_get**

> OnCallLog api_reporting_v1_team_team_oncall_log_get(x_vo_api_id, x_vo_api_key, team, opts)

A list of shift changes for a team

Returns a log of user shift changes for the specified team. This is historical data, and may be up to 15 minutes behind real-time log data. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::ReportingApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

team = 'team_example' # String | The VictorOps team 'slug'

opts = {
  start: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Return shift changes occurring after this timestamp. The default is the start of the day at midnight. Specify the timestamp in ISO8601 format
  _end: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Return shift changes occurring before this timestamp. The default is the end of the day at 11:59:59. Specify the timestamp in ISO8601 format
  user_name: 'user_name_example' # String | The VictorOps user ID. Return shift changes occurring during the interval specified for this user. Without this parameter, all relevant users (with respect to the specified interval) are returned
}

begin
  #A list of shift changes for a team
  result = api_instance.api_reporting_v1_team_team_oncall_log_get(x_vo_api_id, x_vo_api_key, team, opts)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling ReportingApi->api_reporting_v1_team_team_oncall_log_get: #{e}"
end
```

### Parameters

| Name             | Type         | Description                                                                                                                                                                                         | Notes      |
| ---------------- | ------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **x_vo_api_id**  | **String**   | Your API ID                                                                                                                                                                                         |
| **x_vo_api_key** | **String**   | Your API Key                                                                                                                                                                                        |
| **team**         | **String**   | The VictorOps team &#39;slug&#39;                                                                                                                                                                   |
| **start**        | **DateTime** | Return shift changes occurring after this timestamp. The default is the start of the day at midnight. Specify the timestamp in ISO8601 format                                                       | [optional] |
| **\_end**        | **DateTime** | Return shift changes occurring before this timestamp. The default is the end of the day at 11:59:59. Specify the timestamp in ISO8601 format                                                        | [optional] |
| **user_name**    | **String**   | The VictorOps user ID. Return shift changes occurring during the interval specified for this user. Without this parameter, all relevant users (with respect to the specified interval) are returned | [optional] |

### Return type

[**OnCallLog**](OnCallLog.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_reporting_v2_incidents_get**

> ReportingIncidentList api_reporting_v2_incidents_get(x_vo_api_id, x_vo_api_key, , opts)

Get/search incident history

Retrieve incident history for your company, searching over date ranges and with filtering options. This API may be called a maximum of once a minute. Incident requests are paginated with a offset and limit query string parameters. The query for incidents is run and offset records are skipped, after which limit records will be returned. The default offset is 0 and the default limit is 20. The maximum value allowed for limit is 100. Unless specified otherwise with the parameter currentPhase, the response will only contain resolved incidents. On return, the total number of records available for that query will be returned in the payload as 'total'.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::ReportingApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

opts = {
  offset: 0, # Float | The offset within the set of matching incidents
  limit: 20, # Float | The maximum number of matching incidents to return (100 max)
  entity_id: 'entity_id_example', # String | The entity ID involved  This is the unique identifier for the entity causing the incident.
  incident_number: 'incident_number_example', # String | The incident number as shown in VictorOps Multiple values and ranges are allowed: 4,5,20:50
  started_after: 'started_after_example', # String | Return incidents started after this timestamp Specify the timestamp in ISO8601 format
  started_before: 'started_before_example', # String | Find incidents started before this timestamp  Specify the timestamp in ISO8601 format
  host: 'host_example', # String | The host involved in the incident Multiple values can be separated with commas.
  service: 'service_example', # String | The service involved in the incident (if any) Multiple values can be separated with commas.
  current_phase: 'current_phase_example', # String | The current phase of the incident \"resolved\", \"triggered\" or \"acknowledged\". Multiple values can be separated with commas. By default, response contains only \"resolved\" incidents
  routing_key: 'routing_key_example' # String | The original routing of the incident
}

begin
  #Get/search incident history
  result = api_instance.api_reporting_v2_incidents_get(x_vo_api_id, x_vo_api_key, , opts)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling ReportingApi->api_reporting_v2_incidents_get: #{e}"
end
```

### Parameters

| Name                | Type       | Description                                                                                                                                                                                                                        | Notes                      |
| ------------------- | ---------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------- |
| **x_vo_api_id**     | **String** | Your API ID                                                                                                                                                                                                                        |
| **x_vo_api_key**    | **String** | Your API Key                                                                                                                                                                                                                       |
| **offset**          | **Float**  | The offset within the set of matching incidents                                                                                                                                                                                    | [optional] [default to 0]  |
| **limit**           | **Float**  | The maximum number of matching incidents to return (100 max)                                                                                                                                                                       | [optional] [default to 20] |
| **entity_id**       | **String** | The entity ID involved This is the unique identifier for the entity causing the incident.                                                                                                                                          | [optional]                 |
| **incident_number** | **String** | The incident number as shown in VictorOps Multiple values and ranges are allowed: 4,5,20:50                                                                                                                                        | [optional]                 |
| **started_after**   | **String** | Return incidents started after this timestamp Specify the timestamp in ISO8601 format                                                                                                                                              | [optional]                 |
| **started_before**  | **String** | Find incidents started before this timestamp Specify the timestamp in ISO8601 format                                                                                                                                               | [optional]                 |
| **host**            | **String** | The host involved in the incident Multiple values can be separated with commas.                                                                                                                                                    | [optional]                 |
| **service**         | **String** | The service involved in the incident (if any) Multiple values can be separated with commas.                                                                                                                                        | [optional]                 |
| **current_phase**   | **String** | The current phase of the incident \&quot;resolved\&quot;, \&quot;triggered\&quot; or \&quot;acknowledged\&quot;. Multiple values can be separated with commas. By default, response contains only \&quot;resolved\&quot; incidents | [optional]                 |
| **routing_key**     | **String** | The original routing of the incident                                                                                                                                                                                               | [optional]                 |

### Return type

[**ReportingIncidentList**](ReportingIncidentList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
