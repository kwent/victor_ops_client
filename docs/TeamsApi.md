# VictorOpsClient::TeamsApi

All URIs are relative to *https://api.victorops.com*

| Method                                                                                                     | HTTP request                                         | Description                                       |
| ---------------------------------------------------------------------------------------------------------- | ---------------------------------------------------- | ------------------------------------------------- |
| [**api_public_v1_team_get**](TeamsApi.md#api_public_v1_team_get)                                           | **GET** /api-public/v1/team                          | List teams                                        |
| [**api_public_v1_team_post**](TeamsApi.md#api_public_v1_team_post)                                         | **POST** /api-public/v1/team                         | Add a team                                        |
| [**api_public_v1_team_team_admins_get**](TeamsApi.md#api_public_v1_team_team_admins_get)                   | **GET** /api-public/v1/team/{team}/admins            | Retrieve a list of team admins for a team         |
| [**api_public_v1_team_team_delete**](TeamsApi.md#api_public_v1_team_team_delete)                           | **DELETE** /api-public/v1/team/{team}                | Remove a team                                     |
| [**api_public_v1_team_team_get**](TeamsApi.md#api_public_v1_team_team_get)                                 | **GET** /api-public/v1/team/{team}                   | Retrieve information for a team                   |
| [**api_public_v1_team_team_members_get**](TeamsApi.md#api_public_v1_team_team_members_get)                 | **GET** /api-public/v1/team/{team}/members           | Retrieve a list of members for a team             |
| [**api_public_v1_team_team_members_post**](TeamsApi.md#api_public_v1_team_team_members_post)               | **POST** /api-public/v1/team/{team}/members          | Add a team member                                 |
| [**api_public_v1_team_team_members_user_delete**](TeamsApi.md#api_public_v1_team_team_members_user_delete) | **DELETE** /api-public/v1/team/{team}/members/{user} | Remove a team member                              |
| [**api_public_v1_team_team_policies_get**](TeamsApi.md#api_public_v1_team_team_policies_get)               | **GET** /api-public/v1/team/{team}/policies          | Retrieve a list of escalation policies for a team |
| [**api_public_v1_team_team_put**](TeamsApi.md#api_public_v1_team_team_put)                                 | **PUT** /api-public/v1/team/{team}                   | Update a team                                     |

# **api_public_v1_team_get**

> ListTeamResponse api_public_v1_team_get(x_vo_api_id, x_vo_api_key, )

List teams

Get a list of teams for your organization. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::TeamsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key


begin
  #List teams
  result = api_instance.api_public_v1_team_get(x_vo_api_id, x_vo_api_key, )
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling TeamsApi->api_public_v1_team_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description  | Notes |
| ---------------- | ---------- | ------------ | ----- |
| **x_vo_api_id**  | **String** | Your API ID  |
| **x_vo_api_key** | **String** | Your API Key |

### Return type

[**ListTeamResponse**](ListTeamResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_team_post**

> AddTeamResponse api_public_v1_team_post(x_vo_api_id, x_vo_api_key, body)

Add a team

Add a team to your organization. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::TeamsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::AddTeamPayload.new # AddTeamPayload | The team information


begin
  #Add a team
  result = api_instance.api_public_v1_team_post(x_vo_api_id, x_vo_api_key, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling TeamsApi->api_public_v1_team_post: #{e}"
end
```

### Parameters

| Name             | Type                                    | Description          | Notes |
| ---------------- | --------------------------------------- | -------------------- | ----- |
| **x_vo_api_id**  | **String**                              | Your API ID          |
| **x_vo_api_key** | **String**                              | Your API Key         |
| **body**         | [**AddTeamPayload**](AddTeamPayload.md) | The team information |

### Return type

[**AddTeamResponse**](AddTeamResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_team_team_admins_get**

> TeamAdminsResponse api_public_v1_team_team_admins_get(x_vo_api_id, x_vo_api_key, team)

Retrieve a list of team admins for a team

Get the team admins for the specified team. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::TeamsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

team = 'team_example' # String | The VictorOps team


begin
  #Retrieve a list of team admins for a team
  result = api_instance.api_public_v1_team_team_admins_get(x_vo_api_id, x_vo_api_key, team)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling TeamsApi->api_public_v1_team_team_admins_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description        | Notes |
| ---------------- | ---------- | ------------------ | ----- |
| **x_vo_api_id**  | **String** | Your API ID        |
| **x_vo_api_key** | **String** | Your API Key       |
| **team**         | **String** | The VictorOps team |

### Return type

[**TeamAdminsResponse**](TeamAdminsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_team_team_delete**

> api_public_v1_team_team_delete(x_vo_api_id, x_vo_api_key, team)

Remove a team

Remove a team from your organization. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::TeamsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

team = 'team_example' # String | The VictorOps team to be deleted


begin
  #Remove a team
  api_instance.api_public_v1_team_team_delete(x_vo_api_id, x_vo_api_key, team)
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling TeamsApi->api_public_v1_team_team_delete: #{e}"
end
```

### Parameters

| Name             | Type       | Description                      | Notes |
| ---------------- | ---------- | -------------------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID                      |
| **x_vo_api_key** | **String** | Your API Key                     |
| **team**         | **String** | The VictorOps team to be deleted |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_team_team_get**

> AddTeamResponse api_public_v1_team_team_get(x_vo_api_id, x_vo_api_key, team)

Retrieve information for a team

Get the information for the specified team. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::TeamsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

team = 'team_example' # String | The VictorOps team to fetch


begin
  #Retrieve information for a team
  result = api_instance.api_public_v1_team_team_get(x_vo_api_id, x_vo_api_key, team)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling TeamsApi->api_public_v1_team_team_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description                 | Notes |
| ---------------- | ---------- | --------------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID                 |
| **x_vo_api_key** | **String** | Your API Key                |
| **team**         | **String** | The VictorOps team to fetch |

### Return type

[**AddTeamResponse**](AddTeamResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_team_team_members_get**

> ListTeamMembersResponse api_public_v1_team_team_members_get(x_vo_api_id, x_vo_api_key, team)

Retrieve a list of members for a team

Get the members for the specified team. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::TeamsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

team = 'team_example' # String | The VictorOps team to fetch


begin
  #Retrieve a list of members for a team
  result = api_instance.api_public_v1_team_team_members_get(x_vo_api_id, x_vo_api_key, team)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling TeamsApi->api_public_v1_team_team_members_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description                 | Notes |
| ---------------- | ---------- | --------------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID                 |
| **x_vo_api_key** | **String** | Your API Key                |
| **team**         | **String** | The VictorOps team to fetch |

### Return type

[**ListTeamMembersResponse**](ListTeamMembersResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_team_team_members_post**

> ListTeamMembersResponse api_public_v1_team_team_members_post(x_vo_api_id, x_vo_api_key, team, body)

Add a team member

Add a team member to your team. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::TeamsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

team = 'team_example' # String | The VictorOps team to fetch

body = VictorOpsClient::AddTeamMemberPayload.new # AddTeamMemberPayload |


begin
  #Add a team member
  result = api_instance.api_public_v1_team_team_members_post(x_vo_api_id, x_vo_api_key, team, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling TeamsApi->api_public_v1_team_team_members_post: #{e}"
end
```

### Parameters

| Name             | Type                                                | Description                 | Notes |
| ---------------- | --------------------------------------------------- | --------------------------- | ----- |
| **x_vo_api_id**  | **String**                                          | Your API ID                 |
| **x_vo_api_key** | **String**                                          | Your API Key                |
| **team**         | **String**                                          | The VictorOps team to fetch |
| **body**         | [**AddTeamMemberPayload**](AddTeamMemberPayload.md) |                             |

### Return type

[**ListTeamMembersResponse**](ListTeamMembersResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_team_team_members_user_delete**

> api_public_v1_team_team_members_user_delete(x_vo_api_id, x_vo_api_key, team, user, body)

Remove a team member

Remove a team member from your team. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::TeamsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

team = 'team_example' # String | The VictorOps team to be removed from

user = 'user_example' # String | The team member username to be removed

body = VictorOpsClient::RemoveTeamMemberPayload.new # RemoveTeamMemberPayload | The user information


begin
  #Remove a team member
  api_instance.api_public_v1_team_team_members_user_delete(x_vo_api_id, x_vo_api_key, team, user, body)
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling TeamsApi->api_public_v1_team_team_members_user_delete: #{e}"
end
```

### Parameters

| Name             | Type                                                      | Description                            | Notes |
| ---------------- | --------------------------------------------------------- | -------------------------------------- | ----- |
| **x_vo_api_id**  | **String**                                                | Your API ID                            |
| **x_vo_api_key** | **String**                                                | Your API Key                           |
| **team**         | **String**                                                | The VictorOps team to be removed from  |
| **user**         | **String**                                                | The team member username to be removed |
| **body**         | [**RemoveTeamMemberPayload**](RemoveTeamMemberPayload.md) | The user information                   |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_team_team_policies_get**

> EscalationPolicyInfoList api_public_v1_team_team_policies_get(x_vo_api_id, x_vo_api_key, team)

Retrieve a list of escalation policies for a team

Please see the Escalation Policies section for retrieving information on escalation policies Get the escalation policies for the specified team. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::TeamsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

team = 'team_example' # String | The VictorOps team to fetch


begin
  #Retrieve a list of escalation policies for a team
  result = api_instance.api_public_v1_team_team_policies_get(x_vo_api_id, x_vo_api_key, team)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling TeamsApi->api_public_v1_team_team_policies_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description                 | Notes |
| ---------------- | ---------- | --------------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID                 |
| **x_vo_api_key** | **String** | Your API Key                |
| **team**         | **String** | The VictorOps team to fetch |

### Return type

[**EscalationPolicyInfoList**](EscalationPolicyInfoList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_team_team_put**

> AddTeamResponse api_public_v1_team_team_put(x_vo_api_id, x_vo_api_key, team, body)

Update a team

Update the designated team This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::TeamsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

team = 'team_example' # String | The VictorOps team to be updated

body = VictorOpsClient::AddTeamPayload.new # AddTeamPayload | The team information


begin
  #Update a team
  result = api_instance.api_public_v1_team_team_put(x_vo_api_id, x_vo_api_key, team, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling TeamsApi->api_public_v1_team_team_put: #{e}"
end
```

### Parameters

| Name             | Type                                    | Description                      | Notes |
| ---------------- | --------------------------------------- | -------------------------------- | ----- |
| **x_vo_api_id**  | **String**                              | Your API ID                      |
| **x_vo_api_key** | **String**                              | Your API Key                     |
| **team**         | **String**                              | The VictorOps team to be updated |
| **body**         | [**AddTeamPayload**](AddTeamPayload.md) | The team information             |

### Return type

[**AddTeamResponse**](AddTeamResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
