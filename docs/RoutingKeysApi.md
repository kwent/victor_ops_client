# VictorOpsClient::RoutingKeysApi

All URIs are relative to *https://api.victorops.com*

| Method                                                                                           | HTTP request                             | Description                             |
| ------------------------------------------------------------------------------------------------ | ---------------------------------------- | --------------------------------------- |
| [**api_public_v1_org_routing_keys_get**](RoutingKeysApi.md#api_public_v1_org_routing_keys_get)   | **GET** /api-public/v1/org/routing-keys  | List routing keys with associated teams |
| [**api_public_v1_org_routing_keys_post**](RoutingKeysApi.md#api_public_v1_org_routing_keys_post) | **POST** /api-public/v1/org/routing-keys | Create a new routing key                |

# **api_public_v1_org_routing_keys_get**

> ListRoutingKeysResponse api_public_v1_org_routing_keys_get(x_vo_api_id, x_vo_api_key, )

List routing keys with associated teams

Retrieves a list of routing keys and associated teams. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::RoutingKeysApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key


begin
  #List routing keys with associated teams
  result = api_instance.api_public_v1_org_routing_keys_get(x_vo_api_id, x_vo_api_key, )
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling RoutingKeysApi->api_public_v1_org_routing_keys_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description  | Notes |
| ---------------- | ---------- | ------------ | ----- |
| **x_vo_api_id**  | **String** | Your API ID  |
| **x_vo_api_key** | **String** | Your API Key |

### Return type

[**ListRoutingKeysResponse**](ListRoutingKeysResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_org_routing_keys_post**

> CreateRoutingKeyResponse api_public_v1_org_routing_keys_post(x_vo_api_id, x_vo_api_key, body)

Create a new routing key

Creates a new routing key with escalation policy mapping. The targets array is a list of escalation policy policySlugs that the new routing key will target. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::RoutingKeysApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::RoutingKeyPayload.new # RoutingKeyPayload |


begin
  #Create a new routing key
  result = api_instance.api_public_v1_org_routing_keys_post(x_vo_api_id, x_vo_api_key, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling RoutingKeysApi->api_public_v1_org_routing_keys_post: #{e}"
end
```

### Parameters

| Name             | Type                                          | Description  | Notes |
| ---------------- | --------------------------------------------- | ------------ | ----- |
| **x_vo_api_id**  | **String**                                    | Your API ID  |
| **x_vo_api_key** | **String**                                    | Your API Key |
| **body**         | [**RoutingKeyPayload**](RoutingKeyPayload.md) |              |

### Return type

[**CreateRoutingKeyResponse**](CreateRoutingKeyResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
