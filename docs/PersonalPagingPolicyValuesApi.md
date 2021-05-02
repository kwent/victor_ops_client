# VictorOpsClient::PersonalPagingPolicyValuesApi

All URIs are relative to *https://api.victorops.com*

| Method                                                                                                                                | HTTP request                                        | Description                          |
| ------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------- | ------------------------------------ |
| [**api_public_v1_policies_types_contacts_get**](PersonalPagingPolicyValuesApi.md#api_public_v1_policies_types_contacts_get)           | **GET** /api-public/v1/policies/types/contacts      | Get the available contact types      |
| [**api_public_v1_policies_types_notifications_get**](PersonalPagingPolicyValuesApi.md#api_public_v1_policies_types_notifications_get) | **GET** /api-public/v1/policies/types/notifications | Get the available notification types |
| [**api_public_v1_policies_types_timeouts_get**](PersonalPagingPolicyValuesApi.md#api_public_v1_policies_types_timeouts_get)           | **GET** /api-public/v1/policies/types/timeouts      | Get the available timeout values     |

# **api_public_v1_policies_types_contacts_get**

> Object api_public_v1_policies_types_contacts_get(x_vo_api_id, x_vo_api_key, )

Get the available contact types

Get the available contact types description: \"Email Address\", type: \"email\" description: \"Phone Number\", type: \"phone\" This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::PersonalPagingPolicyValuesApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key


begin
  #Get the available contact types
  result = api_instance.api_public_v1_policies_types_contacts_get(x_vo_api_id, x_vo_api_key, )
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling PersonalPagingPolicyValuesApi->api_public_v1_policies_types_contacts_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description  | Notes |
| ---------------- | ---------- | ------------ | ----- |
| **x_vo_api_id**  | **String** | Your API ID  |
| **x_vo_api_key** | **String** | Your API Key |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_policies_types_notifications_get**

> Object api_public_v1_policies_types_notifications_get(x_vo_api_id, x_vo_api_key, )

Get the available notification types

Get the available notification types description: \"Send a push notification to all my devices\", type: \"push\" description: \"Send an email to an email address\", type: \"email\" description: \"Send an SMS to a phone number\", type: \"sms\" description: \"Make a phone call to a phone number\", type: \"phone\" This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::PersonalPagingPolicyValuesApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key


begin
  #Get the available notification types
  result = api_instance.api_public_v1_policies_types_notifications_get(x_vo_api_id, x_vo_api_key, )
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling PersonalPagingPolicyValuesApi->api_public_v1_policies_types_notifications_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description  | Notes |
| ---------------- | ---------- | ------------ | ----- |
| **x_vo_api_id**  | **String** | Your API ID  |
| **x_vo_api_key** | **String** | Your API Key |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_policies_types_timeouts_get**

> Object api_public_v1_policies_types_timeouts_get(x_vo_api_id, x_vo_api_key, )

Get the available timeout values

Get the available timeout values description: \"If still unacked after 1 minute\", type: 1 description: \"If still unacked after 5 minutes\", type: 5 description: \"If still unacked after 10 minutes\", type: 10 description: \"If still unacked after 15 minutes\", type: 15 description: \"If still unacked after 20 minutes\", type: 20 description: \"If still unacked after 25 minutes\", type: 25 description: \"If still unacked after 30 minutes\", type: 30 description: \"If still unacked after 45 minutes\", type: 45 description: \"If still unacked after 60 minutes\", type: 60 This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::PersonalPagingPolicyValuesApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key


begin
  #Get the available timeout values
  result = api_instance.api_public_v1_policies_types_timeouts_get(x_vo_api_id, x_vo_api_key, )
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling PersonalPagingPolicyValuesApi->api_public_v1_policies_types_timeouts_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description  | Notes |
| ---------------- | ---------- | ------------ | ----- |
| **x_vo_api_id**  | **String** | Your API ID  |
| **x_vo_api_key** | **String** | Your API Key |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
