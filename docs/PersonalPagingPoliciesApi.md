# VictorOpsClient::PersonalPagingPoliciesApi

All URIs are relative to *https://api.victorops.com*

| Method                                                                                                                                                | HTTP request                                                        | Description                             |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------- | --------------------------------------- |
| [**api_public_v1_profile_username_policies_get**](PersonalPagingPoliciesApi.md#api_public_v1_profile_username_policies_get)                           | **GET** /api-public/v1/profile/{username}/policies                  | Get the user&#39;s paging policy        |
| [**api_public_v1_profile_username_policies_post**](PersonalPagingPoliciesApi.md#api_public_v1_profile_username_policies_post)                         | **POST** /api-public/v1/profile/{username}/policies                 | Create a paging policy step             |
| [**api_public_v1_profile_username_policies_step_get**](PersonalPagingPoliciesApi.md#api_public_v1_profile_username_policies_step_get)                 | **GET** /api-public/v1/profile/{username}/policies/{step}           | Get a paging policy step                |
| [**api_public_v1_profile_username_policies_step_post**](PersonalPagingPoliciesApi.md#api_public_v1_profile_username_policies_step_post)               | **POST** /api-public/v1/profile/{username}/policies/{step}          | Create a rule for a paging policy step  |
| [**api_public_v1_profile_username_policies_step_put**](PersonalPagingPoliciesApi.md#api_public_v1_profile_username_policies_step_put)                 | **PUT** /api-public/v1/profile/{username}/policies/{step}           | Update a paging policy step             |
| [**api_public_v1_profile_username_policies_step_rule_delete**](PersonalPagingPoliciesApi.md#api_public_v1_profile_username_policies_step_rule_delete) | **DELETE** /api-public/v1/profile/{username}/policies/{step}/{rule} | Delete a rule from a paging policy step |
| [**api_public_v1_profile_username_policies_step_rule_get**](PersonalPagingPoliciesApi.md#api_public_v1_profile_username_policies_step_rule_get)       | **GET** /api-public/v1/profile/{username}/policies/{step}/{rule}    | Get a rule from a paging policy step    |
| [**api_public_v1_profile_username_policies_step_rule_put**](PersonalPagingPoliciesApi.md#api_public_v1_profile_username_policies_step_rule_put)       | **PUT** /api-public/v1/profile/{username}/policies/{step}/{rule}    | Update a rule for a paging policy step  |

# **api_public_v1_profile_username_policies_get**

> Object api_public_v1_profile_username_policies_get(username, x_vo_api_id, x_vo_api_key, )

Get the user's paging policy

Get all the paging policy steps for the user on the org associated with the API key This API may be called a maximum of 1 time per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::PersonalPagingPoliciesApi.new

username = 'username_example' # String | Your username

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key


begin
  #Get the user's paging policy
  result = api_instance.api_public_v1_profile_username_policies_get(username, x_vo_api_id, x_vo_api_key, )
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling PersonalPagingPoliciesApi->api_public_v1_profile_username_policies_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description   | Notes |
| ---------------- | ---------- | ------------- | ----- |
| **username**     | **String** | Your username |
| **x_vo_api_id**  | **String** | Your API ID   |
| **x_vo_api_key** | **String** | Your API Key  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_profile_username_policies_post**

> Object api_public_v1_profile_username_policies_post(username, x_vo_api_id, x_vo_api_key, body)

Create a paging policy step

Create a paging policy step This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::PersonalPagingPoliciesApi.new

username = 'username_example' # String | Your username

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::AddGroupPayload.new # AddGroupPayload |


begin
  #Create a paging policy step
  result = api_instance.api_public_v1_profile_username_policies_post(username, x_vo_api_id, x_vo_api_key, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling PersonalPagingPoliciesApi->api_public_v1_profile_username_policies_post: #{e}"
end
```

### Parameters

| Name             | Type                                      | Description   | Notes |
| ---------------- | ----------------------------------------- | ------------- | ----- |
| **username**     | **String**                                | Your username |
| **x_vo_api_id**  | **String**                                | Your API ID   |
| **x_vo_api_key** | **String**                                | Your API Key  |
| **body**         | [**AddGroupPayload**](AddGroupPayload.md) |               |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_profile_username_policies_step_get**

> Object api_public_v1_profile_username_policies_step_get(username, step, x_vo_api_id, x_vo_api_key, )

Get a paging policy step

Get a paging policy step This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::PersonalPagingPoliciesApi.new

username = 'username_example' # String | Your username

step = 8.14 # Float | Paging policy step

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key


begin
  #Get a paging policy step
  result = api_instance.api_public_v1_profile_username_policies_step_get(username, step, x_vo_api_id, x_vo_api_key, )
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling PersonalPagingPoliciesApi->api_public_v1_profile_username_policies_step_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description        | Notes |
| ---------------- | ---------- | ------------------ | ----- |
| **username**     | **String** | Your username      |
| **step**         | **Float**  | Paging policy step |
| **x_vo_api_id**  | **String** | Your API ID        |
| **x_vo_api_key** | **String** | Your API Key       |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_profile_username_policies_step_post**

> Object api_public_v1_profile_username_policies_step_post(username, step, x_vo_api_id, x_vo_api_key, body)

Create a rule for a paging policy step

Create a rule for a paging policy step This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::PersonalPagingPoliciesApi.new

username = 'username_example' # String | Your username

step = 8.14 # Float | Paging policy step

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::AddStepPayload.new # AddStepPayload |


begin
  #Create a rule for a paging policy step
  result = api_instance.api_public_v1_profile_username_policies_step_post(username, step, x_vo_api_id, x_vo_api_key, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling PersonalPagingPoliciesApi->api_public_v1_profile_username_policies_step_post: #{e}"
end
```

### Parameters

| Name             | Type                                    | Description        | Notes |
| ---------------- | --------------------------------------- | ------------------ | ----- |
| **username**     | **String**                              | Your username      |
| **step**         | **Float**                               | Paging policy step |
| **x_vo_api_id**  | **String**                              | Your API ID        |
| **x_vo_api_key** | **String**                              | Your API Key       |
| **body**         | [**AddStepPayload**](AddStepPayload.md) |                    |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_profile_username_policies_step_put**

> Object api_public_v1_profile_username_policies_step_put(username, step, x_vo_api_id, x_vo_api_key, body)

Update a paging policy step

Update a paging policy step This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::PersonalPagingPoliciesApi.new

username = 'username_example' # String | Your username

step = 8.14 # Float | Paging policy step

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::AddGroupPayload.new # AddGroupPayload |


begin
  #Update a paging policy step
  result = api_instance.api_public_v1_profile_username_policies_step_put(username, step, x_vo_api_id, x_vo_api_key, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling PersonalPagingPoliciesApi->api_public_v1_profile_username_policies_step_put: #{e}"
end
```

### Parameters

| Name             | Type                                      | Description        | Notes |
| ---------------- | ----------------------------------------- | ------------------ | ----- |
| **username**     | **String**                                | Your username      |
| **step**         | **Float**                                 | Paging policy step |
| **x_vo_api_id**  | **String**                                | Your API ID        |
| **x_vo_api_key** | **String**                                | Your API Key       |
| **body**         | [**AddGroupPayload**](AddGroupPayload.md) |                    |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_profile_username_policies_step_rule_delete**

> Object api_public_v1_profile_username_policies_step_rule_delete(username, step, rule, x_vo_api_id, x_vo_api_key, )

Delete a rule from a paging policy step

Delete a rule from a paging policy step This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::PersonalPagingPoliciesApi.new

username = 'username_example' # String | Your username

step = 8.14 # Float | Paging policy step

rule = 8.14 # Float | Rule for a paging policy step

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key


begin
  #Delete a rule from a paging policy step
  result = api_instance.api_public_v1_profile_username_policies_step_rule_delete(username, step, rule, x_vo_api_id, x_vo_api_key, )
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling PersonalPagingPoliciesApi->api_public_v1_profile_username_policies_step_rule_delete: #{e}"
end
```

### Parameters

| Name             | Type       | Description                   | Notes |
| ---------------- | ---------- | ----------------------------- | ----- |
| **username**     | **String** | Your username                 |
| **step**         | **Float**  | Paging policy step            |
| **rule**         | **Float**  | Rule for a paging policy step |
| **x_vo_api_id**  | **String** | Your API ID                   |
| **x_vo_api_key** | **String** | Your API Key                  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_profile_username_policies_step_rule_get**

> Object api_public_v1_profile_username_policies_step_rule_get(username, step, rule, x_vo_api_id, x_vo_api_key, )

Get a rule from a paging policy step

Get a rule from a paging policy step This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::PersonalPagingPoliciesApi.new

username = 'username_example' # String | Your username

step = 8.14 # Float | Paging policy step

rule = 8.14 # Float | Rule for a paging policy step

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key


begin
  #Get a rule from a paging policy step
  result = api_instance.api_public_v1_profile_username_policies_step_rule_get(username, step, rule, x_vo_api_id, x_vo_api_key, )
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling PersonalPagingPoliciesApi->api_public_v1_profile_username_policies_step_rule_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description                   | Notes |
| ---------------- | ---------- | ----------------------------- | ----- |
| **username**     | **String** | Your username                 |
| **step**         | **Float**  | Paging policy step            |
| **rule**         | **Float**  | Rule for a paging policy step |
| **x_vo_api_id**  | **String** | Your API ID                   |
| **x_vo_api_key** | **String** | Your API Key                  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_profile_username_policies_step_rule_put**

> Object api_public_v1_profile_username_policies_step_rule_put(username, step, rule, x_vo_api_id, x_vo_api_key, body)

Update a rule for a paging policy step

Update a rule for a paging policy step This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::PersonalPagingPoliciesApi.new

username = 'username_example' # String | Your username

step = 8.14 # Float | Paging policy step

rule = 8.14 # Float | Rule for a paging policy step

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::AddStepPayload.new # AddStepPayload |


begin
  #Update a rule for a paging policy step
  result = api_instance.api_public_v1_profile_username_policies_step_rule_put(username, step, rule, x_vo_api_id, x_vo_api_key, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling PersonalPagingPoliciesApi->api_public_v1_profile_username_policies_step_rule_put: #{e}"
end
```

### Parameters

| Name             | Type                                    | Description                   | Notes |
| ---------------- | --------------------------------------- | ----------------------------- | ----- |
| **username**     | **String**                              | Your username                 |
| **step**         | **Float**                               | Paging policy step            |
| **rule**         | **Float**                               | Rule for a paging policy step |
| **x_vo_api_id**  | **String**                              | Your API ID                   |
| **x_vo_api_key** | **String**                              | Your API Key                  |
| **body**         | [**AddStepPayload**](AddStepPayload.md) |                               |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
