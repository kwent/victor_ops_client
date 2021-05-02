# VictorOpsClient::UserPagingPoliciesApi

All URIs are relative to *https://api.victorops.com*

| Method                                                                                                    | HTTP request                                | Description                              |
| --------------------------------------------------------------------------------------------------------- | ------------------------------------------- | ---------------------------------------- |
| [**api_public_v1_user_user_policies_get**](UserPagingPoliciesApi.md#api_public_v1_user_user_policies_get) | **GET** /api-public/v1/user/{user}/policies | Get a list of paging policies for a user |

# **api_public_v1_user_user_policies_get**

> Policies api_public_v1_user_user_policies_get(x_vo_api_id, x_vo_api_key, user)

Get a list of paging policies for a user

Get paging policies for a user This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::UserPagingPoliciesApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

user = 'user_example' # String | The VictorOps user ID


begin
  #Get a list of paging policies for a user
  result = api_instance.api_public_v1_user_user_policies_get(x_vo_api_id, x_vo_api_key, user)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling UserPagingPoliciesApi->api_public_v1_user_user_policies_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description           | Notes |
| ---------------- | ---------- | --------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID           |
| **x_vo_api_key** | **String** | Your API Key          |
| **user**         | **String** | The VictorOps user ID |

### Return type

[**Policies**](Policies.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
