# VictorOpsClient::MaintenanceModeApi

All URIs are relative to *https://api.victorops.com*

| Method                                                                                                                                       | HTTP request                                                   | Description                                              |
| -------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------- | -------------------------------------------------------- |
| [**api_public_v1_maintenancemode_get**](MaintenanceModeApi.md#api_public_v1_maintenancemode_get)                                             | **GET** /api-public/v1/maintenancemode                         | Get an organization&#39;s current maintenance mode state |
| [**api_public_v1_maintenancemode_maintenancemodeid_end_put**](MaintenanceModeApi.md#api_public_v1_maintenancemode_maintenancemodeid_end_put) | **PUT** /api-public/v1/maintenancemode/{maintenancemodeid}/end | End maintenance mode for routing keys                    |
| [**api_public_v1_maintenancemode_start_post**](MaintenanceModeApi.md#api_public_v1_maintenancemode_start_post)                               | **POST** /api-public/v1/maintenancemode/start                  | Start maintenance mode for routing keys                  |

# **api_public_v1_maintenancemode_get**

> MaintenanceModeState api_public_v1_maintenancemode_get(x_vo_api_id, x_vo_api_key, )

Get an organization's current maintenance mode state

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::MaintenanceModeApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key


begin
  #Get an organization's current maintenance mode state
  result = api_instance.api_public_v1_maintenancemode_get(x_vo_api_id, x_vo_api_key, )
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling MaintenanceModeApi->api_public_v1_maintenancemode_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description  | Notes |
| ---------------- | ---------- | ------------ | ----- |
| **x_vo_api_id**  | **String** | Your API ID  |
| **x_vo_api_key** | **String** | Your API Key |

### Return type

[**MaintenanceModeState**](MaintenanceModeState.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_maintenancemode_maintenancemodeid_end_put**

> MaintenanceModeState api_public_v1_maintenancemode_maintenancemodeid_end_put(x_vo_api_id, x_vo_api_key, maintenancemodeid)

End maintenance mode for routing keys

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::MaintenanceModeApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

maintenancemodeid = 'maintenancemodeid_example' # String | The id of the maintenance mode found in the active maintenance mode object


begin
  #End maintenance mode for routing keys
  result = api_instance.api_public_v1_maintenancemode_maintenancemodeid_end_put(x_vo_api_id, x_vo_api_key, maintenancemodeid)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling MaintenanceModeApi->api_public_v1_maintenancemode_maintenancemodeid_end_put: #{e}"
end
```

### Parameters

| Name                  | Type       | Description                                                                | Notes |
| --------------------- | ---------- | -------------------------------------------------------------------------- | ----- |
| **x_vo_api_id**       | **String** | Your API ID                                                                |
| **x_vo_api_key**      | **String** | Your API Key                                                               |
| **maintenancemodeid** | **String** | The id of the maintenance mode found in the active maintenance mode object |

### Return type

[**MaintenanceModeState**](MaintenanceModeState.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: application/json

# **api_public_v1_maintenancemode_start_post**

> MaintenanceModeState api_public_v1_maintenancemode_start_post(x_vo_api_id, x_vo_api_key, body)

Start maintenance mode for routing keys

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::MaintenanceModeApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::Body.new # Body | the definition of the maintenance mode you want to start


begin
  #Start maintenance mode for routing keys
  result = api_instance.api_public_v1_maintenancemode_start_post(x_vo_api_id, x_vo_api_key, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling MaintenanceModeApi->api_public_v1_maintenancemode_start_post: #{e}"
end
```

### Parameters

| Name             | Type            | Description                                              | Notes |
| ---------------- | --------------- | -------------------------------------------------------- | ----- |
| **x_vo_api_id**  | **String**      | Your API ID                                              |
| **x_vo_api_key** | **String**      | Your API Key                                             |
| **body**         | [**Body**](.md) | the definition of the maintenance mode you want to start |

### Return type

[**MaintenanceModeState**](MaintenanceModeState.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
