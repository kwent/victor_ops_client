# VictorOpsClient::ChatApi

All URIs are relative to *https://api.victorops.com*

| Method                                                            | HTTP request                 | Description                        |
| ----------------------------------------------------------------- | ---------------------------- | ---------------------------------- |
| [**api_public_v1_chat_post**](ChatApi.md#api_public_v1_chat_post) | **POST** /api-public/v1/chat | Send a chat message into VictorOps |

# **api_public_v1_chat_post**

> api_public_v1_chat_post(x_vo_api_id, x_vo_api_key, body)

Send a chat message into VictorOps

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::ChatApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::Body.new # Body |


begin
  #Send a chat message into VictorOps
  api_instance.api_public_v1_chat_post(x_vo_api_id, x_vo_api_key, body)
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling ChatApi->api_public_v1_chat_post: #{e}"
end
```

### Parameters

| Name             | Type            | Description  | Notes |
| ---------------- | --------------- | ------------ | ----- |
| **x_vo_api_id**  | **String**      | Your API ID  |
| **x_vo_api_key** | **String**      | Your API Key |
| **body**         | [**Body**](.md) |              |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
