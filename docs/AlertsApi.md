# VictorOpsClient::AlertsApi

All URIs are relative to *https://api.victorops.com*

| Method                                                                          | HTTP request                         | Description             |
| ------------------------------------------------------------------------------- | ------------------------------------ | ----------------------- |
| [**api_public_v1_alerts_uuid_get**](AlertsApi.md#api_public_v1_alerts_uuid_get) | **GET** /api-public/v1/alerts/{uuid} | Retrieve alert details. |

# **api_public_v1_alerts_uuid_get**

> GetAlertResponse api_public_v1_alerts_uuid_get(x_vo_api_id, x_vo_api_key, uuid)

Retrieve alert details.

Retrieve the details of an alert that was sent VictorOps by you. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::AlertsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

uuid = 'uuid_example' # String | The VictorOps uuid of the alert


begin
  #Retrieve alert details.
  result = api_instance.api_public_v1_alerts_uuid_get(x_vo_api_id, x_vo_api_key, uuid)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling AlertsApi->api_public_v1_alerts_uuid_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description                     | Notes |
| ---------------- | ---------- | ------------------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID                     |
| **x_vo_api_key** | **String** | Your API Key                    |
| **uuid**         | **String** | The VictorOps uuid of the alert |

### Return type

[**GetAlertResponse**](GetAlertResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
