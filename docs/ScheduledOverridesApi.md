# VictorOpsClient::ScheduledOverridesApi

All URIs are relative to *https://api.victorops.com*

| Method                                                                                                                                                            | HTTP request                                                            | Description                                     |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------- |
| [**api_public_v1_overrides_get**](ScheduledOverridesApi.md#api_public_v1_overrides_get)                                                                           | **GET** /api-public/v1/overrides                                        | List the scheduled overrides                    |
| [**api_public_v1_overrides_post**](ScheduledOverridesApi.md#api_public_v1_overrides_post)                                                                         | **POST** /api-public/v1/overrides                                       | Creates a new scheduled override                |
| [**api_public_v1_overrides_public_id_assignments_get**](ScheduledOverridesApi.md#api_public_v1_overrides_public_id_assignments_get)                               | **GET** /api-public/v1/overrides/{publicId}/assignments                 | Get the specified scheduled override            |
| [**api_public_v1_overrides_public_id_assignments_policy_slug_delete**](ScheduledOverridesApi.md#api_public_v1_overrides_public_id_assignments_policy_slug_delete) | **DELETE** /api-public/v1/overrides/{publicId}/assignments/{policySlug} | Delete the scheduled override assignment        |
| [**api_public_v1_overrides_public_id_assignments_policy_slug_get**](ScheduledOverridesApi.md#api_public_v1_overrides_public_id_assignments_policy_slug_get)       | **GET** /api-public/v1/overrides/{publicId}/assignments/{policySlug}    | Get the specified scheduled override assignment |
| [**api_public_v1_overrides_public_id_assignments_policy_slug_put**](ScheduledOverridesApi.md#api_public_v1_overrides_public_id_assignments_policy_slug_put)       | **PUT** /api-public/v1/overrides/{publicId}/assignments/{policySlug}    | Update the scheduled override assignment        |
| [**api_public_v1_overrides_public_id_delete**](ScheduledOverridesApi.md#api_public_v1_overrides_public_id_delete)                                                 | **DELETE** /api-public/v1/overrides/{publicId}                          | Deletes a scheduled override                    |
| [**api_public_v1_overrides_public_id_get**](ScheduledOverridesApi.md#api_public_v1_overrides_public_id_get)                                                       | **GET** /api-public/v1/overrides/{publicId}                             | Get the specified scheduled override            |

# **api_public_v1_overrides_get**

> Object api_public_v1_overrides_get(x_vo_api_id, x_vo_api_key, )

List the scheduled overrides

List all the scheduled overrides on the organization This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::ScheduledOverridesApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key


begin
  #List the scheduled overrides
  result = api_instance.api_public_v1_overrides_get(x_vo_api_id, x_vo_api_key, )
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling ScheduledOverridesApi->api_public_v1_overrides_get: #{e}"
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

# **api_public_v1_overrides_post**

> Object api_public_v1_overrides_post(x_vo_api_id, x_vo_api_key, body)

Creates a new scheduled override

Creates a new scheduled override. Start and end dates are in ISO8601 format. E.g. `2018-09-28'T'05:00:00Z` This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::ScheduledOverridesApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::ScheduledOverridePayload.new # ScheduledOverridePayload |


begin
  #Creates a new scheduled override
  result = api_instance.api_public_v1_overrides_post(x_vo_api_id, x_vo_api_key, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling ScheduledOverridesApi->api_public_v1_overrides_post: #{e}"
end
```

### Parameters

| Name             | Type                                                        | Description  | Notes |
| ---------------- | ----------------------------------------------------------- | ------------ | ----- |
| **x_vo_api_id**  | **String**                                                  | Your API ID  |
| **x_vo_api_key** | **String**                                                  | Your API Key |
| **body**         | [**ScheduledOverridePayload**](ScheduledOverridePayload.md) |              |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_overrides_public_id_assignments_get**

> Array&lt;Assignment&gt; api_public_v1_overrides_public_id_assignments_get(x_vo_api_id, x_vo_api_key, public_id)

Get the specified scheduled override

Get the specified scheduled override assignments This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::ScheduledOverridesApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

public_id = 'public_id_example' # String | The publicId of the scheduled override


begin
  #Get the specified scheduled override
  result = api_instance.api_public_v1_overrides_public_id_assignments_get(x_vo_api_id, x_vo_api_key, public_id)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling ScheduledOverridesApi->api_public_v1_overrides_public_id_assignments_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description                            | Notes |
| ---------------- | ---------- | -------------------------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID                            |
| **x_vo_api_key** | **String** | Your API Key                           |
| **public_id**    | **String** | The publicId of the scheduled override |

### Return type

[**Array&lt;Assignment&gt;**](Assignment.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_overrides_public_id_assignments_policy_slug_delete**

> Assignment api_public_v1_overrides_public_id_assignments_policy_slug_delete(x_vo_api_id, x_vo_api_key, public_id, policy_slug)

Delete the scheduled override assignment

Delete the scheduled override assignment This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::ScheduledOverridesApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

public_id = 'public_id_example' # String | The publicId of the scheduled override

policy_slug = 'policy_slug_example' # String | The policySlug of the assignment


begin
  #Delete the scheduled override assignment
  result = api_instance.api_public_v1_overrides_public_id_assignments_policy_slug_delete(x_vo_api_id, x_vo_api_key, public_id, policy_slug)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling ScheduledOverridesApi->api_public_v1_overrides_public_id_assignments_policy_slug_delete: #{e}"
end
```

### Parameters

| Name             | Type       | Description                            | Notes |
| ---------------- | ---------- | -------------------------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID                            |
| **x_vo_api_key** | **String** | Your API Key                           |
| **public_id**    | **String** | The publicId of the scheduled override |
| **policy_slug**  | **String** | The policySlug of the assignment       |

### Return type

[**Assignment**](Assignment.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_overrides_public_id_assignments_policy_slug_get**

> Assignment api_public_v1_overrides_public_id_assignments_policy_slug_get(x_vo_api_id, x_vo_api_key, public_id, policy_slug)

Get the specified scheduled override assignment

Get the specified scheduled override assignments This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::ScheduledOverridesApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

public_id = 'public_id_example' # String | The publicId of the scheduled override

policy_slug = 'policy_slug_example' # String | The policySlug of the assignment


begin
  #Get the specified scheduled override assignment
  result = api_instance.api_public_v1_overrides_public_id_assignments_policy_slug_get(x_vo_api_id, x_vo_api_key, public_id, policy_slug)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling ScheduledOverridesApi->api_public_v1_overrides_public_id_assignments_policy_slug_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description                            | Notes |
| ---------------- | ---------- | -------------------------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID                            |
| **x_vo_api_key** | **String** | Your API Key                           |
| **public_id**    | **String** | The publicId of the scheduled override |
| **policy_slug**  | **String** | The policySlug of the assignment       |

### Return type

[**Assignment**](Assignment.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_overrides_public_id_assignments_policy_slug_put**

> Assignment api_public_v1_overrides_public_id_assignments_policy_slug_put(x_vo_api_id, x_vo_api_key, public_id, policy_slug, body)

Update the scheduled override assignment

Update the scheduled override assignment This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::ScheduledOverridesApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

public_id = 'public_id_example' # String | The publicId of the scheduled override

policy_slug = 'policy_slug_example' # String | The policySlug of the assignment

body = VictorOpsClient::UpdateAssignment.new # UpdateAssignment | The policy and username we are assigning


begin
  #Update the scheduled override assignment
  result = api_instance.api_public_v1_overrides_public_id_assignments_policy_slug_put(x_vo_api_id, x_vo_api_key, public_id, policy_slug, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling ScheduledOverridesApi->api_public_v1_overrides_public_id_assignments_policy_slug_put: #{e}"
end
```

### Parameters

| Name             | Type                                        | Description                              | Notes |
| ---------------- | ------------------------------------------- | ---------------------------------------- | ----- |
| **x_vo_api_id**  | **String**                                  | Your API ID                              |
| **x_vo_api_key** | **String**                                  | Your API Key                             |
| **public_id**    | **String**                                  | The publicId of the scheduled override   |
| **policy_slug**  | **String**                                  | The policySlug of the assignment         |
| **body**         | [**UpdateAssignment**](UpdateAssignment.md) | The policy and username we are assigning |

### Return type

[**Assignment**](Assignment.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_overrides_public_id_delete**

> api_public_v1_overrides_public_id_delete(x_vo_api_id, x_vo_api_key, public_id)

Deletes a scheduled override

Deletes a scheduled override This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::ScheduledOverridesApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

public_id = 'public_id_example' # String | The publicId of the scheduled override


begin
  #Deletes a scheduled override
  api_instance.api_public_v1_overrides_public_id_delete(x_vo_api_id, x_vo_api_key, public_id)
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling ScheduledOverridesApi->api_public_v1_overrides_public_id_delete: #{e}"
end
```

### Parameters

| Name             | Type       | Description                            | Notes |
| ---------------- | ---------- | -------------------------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID                            |
| **x_vo_api_key** | **String** | Your API Key                           |
| **public_id**    | **String** | The publicId of the scheduled override |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_overrides_public_id_get**

> Object api_public_v1_overrides_public_id_get(x_vo_api_id, x_vo_api_key, public_id)

Get the specified scheduled override

Get the specified scheduled override This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::ScheduledOverridesApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

public_id = 'public_id_example' # String | The publicId of the scheduled override


begin
  #Get the specified scheduled override
  result = api_instance.api_public_v1_overrides_public_id_get(x_vo_api_id, x_vo_api_key, public_id)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling ScheduledOverridesApi->api_public_v1_overrides_public_id_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description                            | Notes |
| ---------------- | ---------- | -------------------------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID                            |
| **x_vo_api_key** | **String** | Your API Key                           |
| **public_id**    | **String** | The publicId of the scheduled override |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
