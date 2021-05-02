# VictorOpsClient::UsersApi

All URIs are relative to *https://api.victorops.com*

| Method                                                                                 | HTTP request                             | Description                             |
| -------------------------------------------------------------------------------------- | ---------------------------------------- | --------------------------------------- |
| [**api_public_v1_user_batch_post**](UsersApi.md#api_public_v1_user_batch_post)         | **POST** /api-public/v1/user/batch       | Add multiple users                      |
| [**api_public_v1_user_get**](UsersApi.md#api_public_v1_user_get)                       | **GET** /api-public/v1/user              | List users                              |
| [**api_public_v1_user_post**](UsersApi.md#api_public_v1_user_post)                     | **POST** /api-public/v1/user             | Add a user                              |
| [**api_public_v1_user_user_delete**](UsersApi.md#api_public_v1_user_user_delete)       | **DELETE** /api-public/v1/user/{user}    | Remove a user                           |
| [**api_public_v1_user_user_get**](UsersApi.md#api_public_v1_user_user_get)             | **GET** /api-public/v1/user/{user}       | Retrieve information for a user         |
| [**api_public_v1_user_user_put**](UsersApi.md#api_public_v1_user_user_put)             | **PUT** /api-public/v1/user/{user}       | Update a user                           |
| [**api_public_v1_user_user_teams_get**](UsersApi.md#api_public_v1_user_user_teams_get) | **GET** /api-public/v1/user/{user}/teams | Retrieve the user&#39;s team membership |
| [**api_public_v2_user_get**](UsersApi.md#api_public_v2_user_get)                       | **GET** /api-public/v2/user              | List users                              |

# **api_public_v1_user_batch_post**

> Array&lt;BatchAddUserEntry&gt; api_public_v1_user_batch_post(x_vo_api_id, x_vo_api_key, , opts)

Add multiple users

Add users to your organization This API may be called a maximum of 1 time per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::UsersApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

opts = {
  users: [VictorOpsClient::ParametersaddUserPayload.new] # Array<ParametersaddUserPayload> |
}

begin
  #Add multiple users
  result = api_instance.api_public_v1_user_batch_post(x_vo_api_id, x_vo_api_key, , opts)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling UsersApi->api_public_v1_user_batch_post: #{e}"
end
```

### Parameters

| Name             | Type                                                                     | Description  | Notes      |
| ---------------- | ------------------------------------------------------------------------ | ------------ | ---------- |
| **x_vo_api_id**  | **String**                                                               | Your API ID  |
| **x_vo_api_key** | **String**                                                               | Your API Key |
| **users**        | [**Array&lt;ParametersaddUserPayload&gt;**](ParametersaddUserPayload.md) |              | [optional] |

### Return type

[**Array&lt;BatchAddUserEntry&gt;**](BatchAddUserEntry.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_user_get**

> ListUserResponse api_public_v1_user_get(x_vo_api_id, x_vo_api_key, )

List users

**NOTE: This call is deprecated. Please use `GET /api-public/v2/user` instead.** Get a list of users for your organization This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::UsersApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key


begin
  #List users
  result = api_instance.api_public_v1_user_get(x_vo_api_id, x_vo_api_key, )
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling UsersApi->api_public_v1_user_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description  | Notes |
| ---------------- | ---------- | ------------ | ----- |
| **x_vo_api_id**  | **String** | Your API ID  |
| **x_vo_api_key** | **String** | Your API Key |

### Return type

[**ListUserResponse**](ListUserResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_user_post**

> AddUserResponse api_public_v1_user_post(x_vo_api_id, x_vo_api_key, body)

Add a user

\_\_NOTE: Use of the admin parameter is deprecated. All calls to add a user will set admin to false. Add a user to your organization This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::UsersApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::object.new # object |


begin
  #Add a user
  result = api_instance.api_public_v1_user_post(x_vo_api_id, x_vo_api_key, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling UsersApi->api_public_v1_user_post: #{e}"
end
```

### Parameters

| Name             | Type              | Description  | Notes |
| ---------------- | ----------------- | ------------ | ----- |
| **x_vo_api_id**  | **String**        | Your API ID  |
| **x_vo_api_key** | **String**        | Your API Key |
| **body**         | [**object**](.md) |              |

### Return type

[**AddUserResponse**](AddUserResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_user_user_delete**

> api_public_v1_user_user_delete(x_vo_api_id, x_vo_api_key, user, body)

Remove a user

Remove a user from your organization. You can choose a user to act as a replacement or let VictorOps handle finding the replacement. User will be replaced in their on-call rotations, escalation policies and scheduled overrides. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::UsersApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

user = 'user_example' # String | The VictorOps user to be deleted

body = VictorOpsClient::DeleteUserPayload.new # DeleteUserPayload |


begin
  #Remove a user
  api_instance.api_public_v1_user_user_delete(x_vo_api_id, x_vo_api_key, user, body)
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling UsersApi->api_public_v1_user_user_delete: #{e}"
end
```

### Parameters

| Name             | Type                                          | Description                      | Notes |
| ---------------- | --------------------------------------------- | -------------------------------- | ----- |
| **x_vo_api_id**  | **String**                                    | Your API ID                      |
| **x_vo_api_key** | **String**                                    | Your API Key                     |
| **user**         | **String**                                    | The VictorOps user to be deleted |
| **body**         | [**DeleteUserPayload**](DeleteUserPayload.md) |                                  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_user_user_get**

> AddUserResponse api_public_v1_user_user_get(x_vo_api_id, x_vo_api_key, user)

Retrieve information for a user

Get the information for the specified user This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::UsersApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

user = 'user_example' # String | The VictorOps user to fetch


begin
  #Retrieve information for a user
  result = api_instance.api_public_v1_user_user_get(x_vo_api_id, x_vo_api_key, user)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling UsersApi->api_public_v1_user_user_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description                 | Notes |
| ---------------- | ---------- | --------------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID                 |
| **x_vo_api_key** | **String** | Your API Key                |
| **user**         | **String** | The VictorOps user to fetch |

### Return type

[**AddUserResponse**](AddUserResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_user_user_put**

> AddUserResponse api_public_v1_user_user_put(x_vo_api_id, x_vo_api_key, user, body)

Update a user

Update the designated user This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::UsersApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

user = 'user_example' # String | The VictorOps user to be updated

body = VictorOpsClient::AddUserPayload.new # AddUserPayload |


begin
  #Update a user
  result = api_instance.api_public_v1_user_user_put(x_vo_api_id, x_vo_api_key, user, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling UsersApi->api_public_v1_user_user_put: #{e}"
end
```

### Parameters

| Name             | Type                                    | Description                      | Notes |
| ---------------- | --------------------------------------- | -------------------------------- | ----- |
| **x_vo_api_id**  | **String**                              | Your API ID                      |
| **x_vo_api_key** | **String**                              | Your API Key                     |
| **user**         | **String**                              | The VictorOps user to be updated |
| **body**         | [**AddUserPayload**](AddUserPayload.md) |                                  |

### Return type

[**AddUserResponse**](AddUserResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_user_user_teams_get**

> UserTeamsResponse api_public_v1_user_user_teams_get(x_vo_api_id, x_vo_api_key, user)

Retrieve the user's team membership

This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::UsersApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

user = 'user_example' # String | The VictorOps user


begin
  #Retrieve the user's team membership
  result = api_instance.api_public_v1_user_user_teams_get(x_vo_api_id, x_vo_api_key, user)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling UsersApi->api_public_v1_user_user_teams_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description        | Notes |
| ---------------- | ---------- | ------------------ | ----- |
| **x_vo_api_id**  | **String** | Your API ID        |
| **x_vo_api_key** | **String** | Your API Key       |
| **user**         | **String** | The VictorOps user |

### Return type

[**UserTeamsResponse**](UserTeamsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v2_user_get**

> ListUserResponse api_public_v2_user_get(x_vo_api_id, x_vo_api_key, , opts)

List users

Get a list of users for your organization. Optionally, search for users by email address. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::UsersApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

opts = {
  email: 'email_example' # String | An email address with which to search for users
}

begin
  #List users
  result = api_instance.api_public_v2_user_get(x_vo_api_id, x_vo_api_key, , opts)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling UsersApi->api_public_v2_user_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description                                     | Notes      |
| ---------------- | ---------- | ----------------------------------------------- | ---------- |
| **x_vo_api_id**  | **String** | Your API ID                                     |
| **x_vo_api_key** | **String** | Your API Key                                    |
| **email**        | **String** | An email address with which to search for users | [optional] |

### Return type

[**ListUserResponse**](ListUserResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
