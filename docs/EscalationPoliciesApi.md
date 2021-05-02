# VictorOpsClient::EscalationPoliciesApi

All URIs are relative to *https://api.victorops.com*

| Method                                                                                                    | HTTP request                                | Description                                       |
| --------------------------------------------------------------------------------------------------------- | ------------------------------------------- | ------------------------------------------------- |
| [**api_public_v1_policies_get**](EscalationPoliciesApi.md#api_public_v1_policies_get)                     | **GET** /api-public/v1/policies             | Get a list of escalation policy info              |
| [**api_public_v1_policies_policy_delete**](EscalationPoliciesApi.md#api_public_v1_policies_policy_delete) | **DELETE** /api-public/v1/policies/{policy} | Delete a specified escalation policy              |
| [**api_public_v1_policies_policy_get**](EscalationPoliciesApi.md#api_public_v1_policies_policy_get)       | **GET** /api-public/v1/policies/{policy}    | Get a specific escalation policy                  |
| [**api_public_v1_policies_post**](EscalationPoliciesApi.md#api_public_v1_policies_post)                   | **POST** /api-public/v1/policies            | Create an escalation policy                       |
| [**api_public_v1_team_team_policies_get**](EscalationPoliciesApi.md#api_public_v1_team_team_policies_get) | **GET** /api-public/v1/team/{team}/policies | Retrieve a list of escalation policies for a team |

# **api_public_v1_policies_get**

> EscalationPolicyInfoList api_public_v1_policies_get(x_vo_api_id, x_vo_api_key, , opts)

Get a list of escalation policy info

Retrieves a list of all escalation policy summaries and their associated teams that exist in your organization. If the optional `filter` query parameter is present, retrieves a list of all escalation policy summaries with a name matching the provided search filter. This is the recommended way for determining to which team an escalation policy belongs. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::EscalationPoliciesApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

opts = {
  filter: 'filter_example' # String | An escalation policy name to be used for filtering the results. Note: If this parameter is present, it must be at least three (3) characters long
}

begin
  #Get a list of escalation policy info
  result = api_instance.api_public_v1_policies_get(x_vo_api_id, x_vo_api_key, , opts)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling EscalationPoliciesApi->api_public_v1_policies_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description                                                                                                                                       | Notes      |
| ---------------- | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **x_vo_api_id**  | **String** | Your API ID                                                                                                                                       |
| **x_vo_api_key** | **String** | Your API Key                                                                                                                                      |
| **filter**       | **String** | An escalation policy name to be used for filtering the results. Note: If this parameter is present, it must be at least three (3) characters long | [optional] |

### Return type

[**EscalationPolicyInfoList**](EscalationPolicyInfoList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_policies_policy_delete**

> api_public_v1_policies_policy_delete(x_vo_api_id, x_vo_api_key, policy)

Delete a specified escalation policy

Deletes a specific escalaton policy based on the unique policy slug provided in the path. Any routing keys which ONLY contain this policy will also be deleted. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::EscalationPoliciesApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

policy = 'policy_example' # String | The uniquely identifying escalation policy slug. The policy slug is in the format `pol-[\\w\\d]{16}`


begin
  #Delete a specified escalation policy
  api_instance.api_public_v1_policies_policy_delete(x_vo_api_id, x_vo_api_key, policy)
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling EscalationPoliciesApi->api_public_v1_policies_policy_delete: #{e}"
end
```

### Parameters

| Name             | Type       | Description                                                                                                    | Notes |
| ---------------- | ---------- | -------------------------------------------------------------------------------------------------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID                                                                                                    |
| **x_vo_api_key** | **String** | Your API Key                                                                                                   |
| **policy**       | **String** | The uniquely identifying escalation policy slug. The policy slug is in the format &#x60;pol-[\\w\\d]{16}&#x60; |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_policies_policy_get**

> EscalationPolicy api_public_v1_policies_policy_get(x_vo_api_id, x_vo_api_key, policy)

Get a specific escalation policy

Gets a specific escalation policy based on the unique policy slug provided in the path. The context for which team this policy belongs to is not available at this level. To retrieve information about this escalation policy's team, you must retrieve all of the policy summaries. The escalation policy summaries include links to this endpoint for each escalation policy. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::EscalationPoliciesApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

policy = 'policy_example' # String | The uniquely identifying escalation policy slug.  Thus slug is in the format `pol-[\\w\\d]{16}`


begin
  #Get a specific escalation policy
  result = api_instance.api_public_v1_policies_policy_get(x_vo_api_id, x_vo_api_key, policy)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling EscalationPoliciesApi->api_public_v1_policies_policy_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description                                                                                              | Notes |
| ---------------- | ---------- | -------------------------------------------------------------------------------------------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID                                                                                              |
| **x_vo_api_key** | **String** | Your API Key                                                                                             |
| **policy**       | **String** | The uniquely identifying escalation policy slug. Thus slug is in the format &#x60;pol-[\\w\\d]{16}&#x60; |

### Return type

[**EscalationPolicy**](EscalationPolicy.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_policies_post**

> EscalationPolicy api_public_v1_policies_post(x_vo_api_id, x_vo_api_key, body)

Create an escalation policy

Takes an entire escalation policy and creates it. For the purpose of using this API, escalation policies are treated as immutable. The policy will not be able to be updated or modified in any way via this API once created. It will only be able to be deleted. However, The escalation policies are accessable in the UI once created and can be updated from there. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::EscalationPoliciesApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::CreateEscalationPolicy.new # CreateEscalationPolicy | The request body needed to create an escalation policy


begin
  #Create an escalation policy
  result = api_instance.api_public_v1_policies_post(x_vo_api_id, x_vo_api_key, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling EscalationPoliciesApi->api_public_v1_policies_post: #{e}"
end
```

### Parameters

| Name             | Type                                                    | Description                                            | Notes |
| ---------------- | ------------------------------------------------------- | ------------------------------------------------------ | ----- |
| **x_vo_api_id**  | **String**                                              | Your API ID                                            |
| **x_vo_api_key** | **String**                                              | Your API Key                                           |
| **body**         | [**CreateEscalationPolicy**](CreateEscalationPolicy.md) | The request body needed to create an escalation policy |

### Return type

[**EscalationPolicy**](EscalationPolicy.md)

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

api_instance = VictorOpsClient::EscalationPoliciesApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

team = 'team_example' # String | The VictorOps team to fetch


begin
  #Retrieve a list of escalation policies for a team
  result = api_instance.api_public_v1_team_team_policies_get(x_vo_api_id, x_vo_api_key, team)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling EscalationPoliciesApi->api_public_v1_team_team_policies_get: #{e}"
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
