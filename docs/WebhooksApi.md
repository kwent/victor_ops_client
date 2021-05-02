# VictorOpsClient::WebhooksApi

All URIs are relative to *https://api.victorops.com*

| Method                                                                      | HTTP request                    | Description                                 |
| --------------------------------------------------------------------------- | ------------------------------- | ------------------------------------------- |
| [**api_public_v1_webhooks_get**](WebhooksApi.md#api_public_v1_webhooks_get) | **GET** /api-public/v1/webhooks | Get all of your organization&#39;s webhooks |

# **api_public_v1_webhooks_get**

> WebhookList api_public_v1_webhooks_get(x_vo_api_id, x_vo_api_key, )

Get all of your organization's webhooks

Retrieves a list of all the webhooks existing in your organization. This is the current method for retrieving uniquely identifying slugs of existing webhooks. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::WebhooksApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key


begin
  #Get all of your organization's webhooks
  result = api_instance.api_public_v1_webhooks_get(x_vo_api_id, x_vo_api_key, )
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling WebhooksApi->api_public_v1_webhooks_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description  | Notes |
| ---------------- | ---------- | ------------ | ----- |
| **x_vo_api_id**  | **String** | Your API ID  |
| **x_vo_api_key** | **String** | Your API Key |

### Return type

[**WebhookList**](WebhookList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
