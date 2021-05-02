# VictorOpsClient::OnCallApi

All URIs are relative to *https://api.victorops.com*

| Method                                                                                                              | HTTP request                                           | Description                               |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------ | ----------------------------------------- |
| [**api_public_v1_oncall_current_get**](OnCallApi.md#api_public_v1_oncall_current_get)                               | **GET** /api-public/v1/oncall/current                  | Get an organization&#39;s on-call users   |
| [**api_public_v1_policies_policy_oncall_user_patch**](OnCallApi.md#api_public_v1_policies_policy_oncall_user_patch) | **PATCH** /api-public/v1/policies/{policy}/oncall/user | Create an on-call override (take on-call) |
| [**api_public_v1_team_team_oncall_schedule_get**](OnCallApi.md#api_public_v1_team_team_oncall_schedule_get)         | **GET** /api-public/v1/team/{team}/oncall/schedule     | Get a team&#39;s on-call schedule         |
| [**api_public_v1_team_team_oncall_user_patch**](OnCallApi.md#api_public_v1_team_team_oncall_user_patch)             | **PATCH** /api-public/v1/team/{team}/oncall/user       | Create an on-call override (take on-call) |
| [**api_public_v1_user_user_oncall_schedule_get**](OnCallApi.md#api_public_v1_user_user_oncall_schedule_get)         | **GET** /api-public/v1/user/{user}/oncall/schedule     | Get a user&#39;s on-call schedule         |
| [**api_public_v2_team_team_oncall_schedule_get**](OnCallApi.md#api_public_v2_team_team_oncall_schedule_get)         | **GET** /api-public/v2/team/{team}/oncall/schedule     | Get a team&#39;s on-call schedule         |
| [**api_public_v2_user_user_oncall_schedule_get**](OnCallApi.md#api_public_v2_user_user_oncall_schedule_get)         | **GET** /api-public/v2/user/{user}/oncall/schedule     | Get a user&#39;s on-call schedule         |

# **api_public_v1_oncall_current_get**

> Object api_public_v1_oncall_current_get(x_vo_api_id, x_vo_api_key, )

Get an organization's on-call users

Get all on-call users/teams for your organization. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::OnCallApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key


begin
  #Get an organization's on-call users
  result = api_instance.api_public_v1_oncall_current_get(x_vo_api_id, x_vo_api_key, )
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling OnCallApi->api_public_v1_oncall_current_get: #{e}"
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

# **api_public_v1_policies_policy_oncall_user_patch**

> TakeResult api_public_v1_policies_policy_oncall_user_patch(x_vo_api_id, x_vo_api_key, body, policy)

Create an on-call override (take on-call)

Replaces a currently on-call user in the escalation policy with another. In many cases, the policy slug will match the slug of the team that contains it. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::OnCallApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::TakeRequest.new # TakeRequest | The take on-call payload

policy = 'policy_example' # String | The VictorOps policy 'slug'


begin
  #Create an on-call override (take on-call)
  result = api_instance.api_public_v1_policies_policy_oncall_user_patch(x_vo_api_id, x_vo_api_key, body, policy)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling OnCallApi->api_public_v1_policies_policy_oncall_user_patch: #{e}"
end
```

### Parameters

| Name             | Type                              | Description                         | Notes |
| ---------------- | --------------------------------- | ----------------------------------- | ----- |
| **x_vo_api_id**  | **String**                        | Your API ID                         |
| **x_vo_api_key** | **String**                        | Your API Key                        |
| **body**         | [**TakeRequest**](TakeRequest.md) | The take on-call payload            |
| **policy**       | **String**                        | The VictorOps policy &#39;slug&#39; |

### Return type

[**TakeResult**](TakeResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_team_team_oncall_schedule_get**

> OnCallAndOverrides api_public_v1_team_team_oncall_schedule_get(x_vo_api_id, x_vo_api_key, team, opts)

Get a team's on-call schedule

**NOTE: This call is deprecated. Please use `GET /api-public/v2/team/{team}/oncall/schedule`.** Get the on-call schedule for a team, including on-call overrides. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::OnCallApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

team = 'team_example' # String | The VictorOps team 'slug'

opts = {
  days_forward: 14, # Float | Days to include in returned schedule (123 max)
  days_skip: 0, # Float | Days to skip before computing schedule to return (90 max)
  step: 0 # Float | Step of escalation policy (3 max)
}

begin
  #Get a team's on-call schedule
  result = api_instance.api_public_v1_team_team_oncall_schedule_get(x_vo_api_id, x_vo_api_key, team, opts)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling OnCallApi->api_public_v1_team_team_oncall_schedule_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description                                               | Notes                      |
| ---------------- | ---------- | --------------------------------------------------------- | -------------------------- |
| **x_vo_api_id**  | **String** | Your API ID                                               |
| **x_vo_api_key** | **String** | Your API Key                                              |
| **team**         | **String** | The VictorOps team &#39;slug&#39;                         |
| **days_forward** | **Float**  | Days to include in returned schedule (123 max)            | [optional] [default to 14] |
| **days_skip**    | **Float**  | Days to skip before computing schedule to return (90 max) | [optional] [default to 0]  |
| **step**         | **Float**  | Step of escalation policy (3 max)                         | [optional] [default to 0]  |

### Return type

[**OnCallAndOverrides**](OnCallAndOverrides.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_team_team_oncall_user_patch**

> TakeResult api_public_v1_team_team_oncall_user_patch(x_vo_api_id, x_vo_api_key, body, team)

Create an on-call override (take on-call)

**NOTE: This API call is deprecated. Please use `PATCH /api-public/v2/policies/{policy}/oncall/user`** Replaces a currently on-call user on the team with another. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::OnCallApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::TakeRequest.new # TakeRequest | The take on-call payload

team = 'team_example' # String | The VictorOps team 'slug'


begin
  #Create an on-call override (take on-call)
  result = api_instance.api_public_v1_team_team_oncall_user_patch(x_vo_api_id, x_vo_api_key, body, team)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling OnCallApi->api_public_v1_team_team_oncall_user_patch: #{e}"
end
```

### Parameters

| Name             | Type                              | Description                       | Notes |
| ---------------- | --------------------------------- | --------------------------------- | ----- |
| **x_vo_api_id**  | **String**                        | Your API ID                       |
| **x_vo_api_key** | **String**                        | Your API Key                      |
| **body**         | [**TakeRequest**](TakeRequest.md) | The take on-call payload          |
| **team**         | **String**                        | The VictorOps team &#39;slug&#39; |

### Return type

[**TakeResult**](TakeResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_user_user_oncall_schedule_get**

> Array&lt;OnCallAndOverrides&gt; api_public_v1_user_user_oncall_schedule_get(x_vo_api_id, x_vo_api_key, user, opts)

Get a user's on-call schedule

**NOTE: This call is deprecated. Please use `GET /api-public/v2/user/{user}/oncall/schedule`.** Get the on-call schedule for a user for all teams, including on-call overrides. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::OnCallApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

user = 'user_example' # String | The VictorOps user ID

opts = {
  days_forward: 14, # Float | Days to include in returned schedule (123 max)
  days_skip: 0, # Float | Days to skip before computing schedule to return (90 max)
  step: 0 # Float | Step of escalation policy (3 max)
}

begin
  #Get a user's on-call schedule
  result = api_instance.api_public_v1_user_user_oncall_schedule_get(x_vo_api_id, x_vo_api_key, user, opts)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling OnCallApi->api_public_v1_user_user_oncall_schedule_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description                                               | Notes                      |
| ---------------- | ---------- | --------------------------------------------------------- | -------------------------- |
| **x_vo_api_id**  | **String** | Your API ID                                               |
| **x_vo_api_key** | **String** | Your API Key                                              |
| **user**         | **String** | The VictorOps user ID                                     |
| **days_forward** | **Float**  | Days to include in returned schedule (123 max)            | [optional] [default to 14] |
| **days_skip**    | **Float**  | Days to skip before computing schedule to return (90 max) | [optional] [default to 0]  |
| **step**         | **Float**  | Step of escalation policy (3 max)                         | [optional] [default to 0]  |

### Return type

[**Array&lt;OnCallAndOverrides&gt;**](OnCallAndOverrides.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v2_team_team_oncall_schedule_get**

> TeamSchedule api_public_v2_team_team_oncall_schedule_get(x_vo_api_id, x_vo_api_key, team, opts)

Get a team's on-call schedule

Get the on-call schedule for a team, including on-call overrides. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::OnCallApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

team = 'team_example' # String | The VictorOps team 'slug'

opts = {
  days_forward: 14, # Float | Days to include in returned schedule (123 max)
  days_skip: 0, # Float | Days to skip before computing schedule to return (90 max)
  step: 0 # Float | Step of escalation policy (3 max)
}

begin
  #Get a team's on-call schedule
  result = api_instance.api_public_v2_team_team_oncall_schedule_get(x_vo_api_id, x_vo_api_key, team, opts)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling OnCallApi->api_public_v2_team_team_oncall_schedule_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description                                               | Notes                      |
| ---------------- | ---------- | --------------------------------------------------------- | -------------------------- |
| **x_vo_api_id**  | **String** | Your API ID                                               |
| **x_vo_api_key** | **String** | Your API Key                                              |
| **team**         | **String** | The VictorOps team &#39;slug&#39;                         |
| **days_forward** | **Float**  | Days to include in returned schedule (123 max)            | [optional] [default to 14] |
| **days_skip**    | **Float**  | Days to skip before computing schedule to return (90 max) | [optional] [default to 0]  |
| **step**         | **Float**  | Step of escalation policy (3 max)                         | [optional] [default to 0]  |

### Return type

[**TeamSchedule**](TeamSchedule.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v2_user_user_oncall_schedule_get**

> UserSchedule api_public_v2_user_user_oncall_schedule_get(x_vo_api_id, x_vo_api_key, user, opts)

Get a user's on-call schedule

Get the on-call schedule for a user for all teams the user is on, including on-call overrides. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::OnCallApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

user = 'user_example' # String | The VictorOps user ID

opts = {
  days_forward: 14, # Float | Days to include in returned schedule (123 max)
  days_skip: 0, # Float | Days to skip before computing schedule to return (90 max)
  step: 0 # Float | Step of escalation policy (3 max)
}

begin
  #Get a user's on-call schedule
  result = api_instance.api_public_v2_user_user_oncall_schedule_get(x_vo_api_id, x_vo_api_key, user, opts)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling OnCallApi->api_public_v2_user_user_oncall_schedule_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description                                               | Notes                      |
| ---------------- | ---------- | --------------------------------------------------------- | -------------------------- |
| **x_vo_api_id**  | **String** | Your API ID                                               |
| **x_vo_api_key** | **String** | Your API Key                                              |
| **user**         | **String** | The VictorOps user ID                                     |
| **days_forward** | **Float**  | Days to include in returned schedule (123 max)            | [optional] [default to 14] |
| **days_skip**    | **Float**  | Days to skip before computing schedule to return (90 max) | [optional] [default to 0]  |
| **step**         | **Float**  | Step of escalation policy (3 max)                         | [optional] [default to 0]  |

### Return type

[**UserSchedule**](UserSchedule.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
