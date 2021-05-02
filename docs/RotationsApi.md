# VictorOpsClient::RotationsApi

All URIs are relative to *https://api.victorops.com*

| Method                                                                                               | HTTP request                                  | Description                        |
| ---------------------------------------------------------------------------------------------------- | --------------------------------------------- | ---------------------------------- |
| [**api_public_v1_teams_team_rotations_get**](RotationsApi.md#api_public_v1_teams_team_rotations_get) | **GET** /api-public/v1/teams/{team}/rotations | Get all rotation groups for a team |

# **api_public_v1_teams_team_rotations_get**

> RotationGroupList api_public_v1_teams_team_rotations_get(x_vo_api_id, x_vo_api_key, team)

Get all rotation groups for a team

Retrieves a list of all rotation groups that exist under the specified team. This is the current method for retrieving uniquely identifying slugs of existing rotation groups. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::RotationsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

team = 'team_example' # String | The uniquely identifying team slug for which to retrieve rotation groups


begin
  #Get all rotation groups for a team
  result = api_instance.api_public_v1_teams_team_rotations_get(x_vo_api_id, x_vo_api_key, team)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling RotationsApi->api_public_v1_teams_team_rotations_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description                                                              | Notes |
| ---------------- | ---------- | ------------------------------------------------------------------------ | ----- |
| **x_vo_api_id**  | **String** | Your API ID                                                              |
| **x_vo_api_key** | **String** | Your API Key                                                             |
| **team**         | **String** | The uniquely identifying team slug for which to retrieve rotation groups |

### Return type

[**RotationGroupList**](RotationGroupList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
