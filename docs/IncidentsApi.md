# VictorOpsClient::IncidentsApi

All URIs are relative to *https://api.victorops.com*

| Method                                                                                                                                               | HTTP request                                                          | Description                                                             |
| ---------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| [**api_public_v1_incidents_ack_patch**](IncidentsApi.md#api_public_v1_incidents_ack_patch)                                                           | **PATCH** /api-public/v1/incidents/ack                                | Acknowledge an incident or list of incidents                            |
| [**api_public_v1_incidents_by_user_ack_patch**](IncidentsApi.md#api_public_v1_incidents_by_user_ack_patch)                                           | **PATCH** /api-public/v1/incidents/byUser/ack                         | Acknowledge all incidents for which a user was paged.                   |
| [**api_public_v1_incidents_by_user_resolve_patch**](IncidentsApi.md#api_public_v1_incidents_by_user_resolve_patch)                                   | **PATCH** /api-public/v1/incidents/byUser/resolve                     | Resolve all incidents for which a user was paged.                       |
| [**api_public_v1_incidents_get**](IncidentsApi.md#api_public_v1_incidents_get)                                                                       | **GET** /api-public/v1/incidents                                      | Get current incident information                                        |
| [**api_public_v1_incidents_incident_number_get**](IncidentsApi.md#api_public_v1_incidents_incident_number_get)                                       | **GET** /api-public/v1/incidents/{incidentNumber}                     | Get a single incident                                                   |
| [**api_public_v1_incidents_incident_number_notes_get**](IncidentsApi.md#api_public_v1_incidents_incident_number_notes_get)                           | **GET** /api-public/v1/incidents/{incidentNumber}/notes               | Get the notes associated with an incident                               |
| [**api_public_v1_incidents_incident_number_notes_note_name_delete**](IncidentsApi.md#api_public_v1_incidents_incident_number_notes_note_name_delete) | **DELETE** /api-public/v1/incidents/{incidentNumber}/notes/{noteName} | Delete a Note                                                           |
| [**api_public_v1_incidents_incident_number_notes_note_name_put**](IncidentsApi.md#api_public_v1_incidents_incident_number_notes_note_name_put)       | **PUT** /api-public/v1/incidents/{incidentNumber}/notes/{noteName}    | Update a Note                                                           |
| [**api_public_v1_incidents_incident_number_notes_post**](IncidentsApi.md#api_public_v1_incidents_incident_number_notes_post)                         | **POST** /api-public/v1/incidents/{incidentNumber}/notes              | Create a new Note                                                       |
| [**api_public_v1_incidents_post**](IncidentsApi.md#api_public_v1_incidents_post)                                                                     | **POST** /api-public/v1/incidents                                     | Create a new incident                                                   |
| [**api_public_v1_incidents_reroute_post**](IncidentsApi.md#api_public_v1_incidents_reroute_post)                                                     | **POST** /api-public/v1/incidents/reroute                             | Reroute one or more incidents to one or more new routable destinations. |
| [**api_public_v1_incidents_resolve_patch**](IncidentsApi.md#api_public_v1_incidents_resolve_patch)                                                   | **PATCH** /api-public/v1/incidents/resolve                            | Resolve an incident or list of incidents                                |

# **api_public_v1_incidents_ack_patch**

> AckOrResolveResponse api_public_v1_incidents_ack_patch(x_vo_api_id, x_vo_api_key, body)

Acknowledge an incident or list of incidents

The incident(s) must be currently open. The user supplied must be a valid VictorOps user and a member of your organization. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::IncidentsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::AckOrResolveRequest.new # AckOrResolveRequest | Ack/Resolve payload


begin
  #Acknowledge an incident or list of incidents
  result = api_instance.api_public_v1_incidents_ack_patch(x_vo_api_id, x_vo_api_key, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling IncidentsApi->api_public_v1_incidents_ack_patch: #{e}"
end
```

### Parameters

| Name             | Type                                              | Description         | Notes |
| ---------------- | ------------------------------------------------- | ------------------- | ----- |
| **x_vo_api_id**  | **String**                                        | Your API ID         |
| **x_vo_api_key** | **String**                                        | Your API Key        |
| **body**         | [**AckOrResolveRequest**](AckOrResolveRequest.md) | Ack/Resolve payload |

### Return type

[**AckOrResolveResponse**](AckOrResolveResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_incidents_by_user_ack_patch**

> AckOrResolveResponse api_public_v1_incidents_by_user_ack_patch(x_vo_api_id, x_vo_api_key, body)

Acknowledge all incidents for which a user was paged.

The incident(s) must be currently open. The user supplied must be a valid VictorOps user and a member of your organization. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::IncidentsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::AckOrResolveByUserRequest.new # AckOrResolveByUserRequest | Ack/Resolve payload


begin
  #Acknowledge all incidents for which a user was paged.
  result = api_instance.api_public_v1_incidents_by_user_ack_patch(x_vo_api_id, x_vo_api_key, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling IncidentsApi->api_public_v1_incidents_by_user_ack_patch: #{e}"
end
```

### Parameters

| Name             | Type                                                          | Description         | Notes |
| ---------------- | ------------------------------------------------------------- | ------------------- | ----- |
| **x_vo_api_id**  | **String**                                                    | Your API ID         |
| **x_vo_api_key** | **String**                                                    | Your API Key        |
| **body**         | [**AckOrResolveByUserRequest**](AckOrResolveByUserRequest.md) | Ack/Resolve payload |

### Return type

[**AckOrResolveResponse**](AckOrResolveResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_incidents_by_user_resolve_patch**

> AckOrResolveResponse api_public_v1_incidents_by_user_resolve_patch(x_vo_api_id, x_vo_api_key, body)

Resolve all incidents for which a user was paged.

The incident(s) must be currently open. The user supplied must be a valid VictorOps user and a member of your organization. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::IncidentsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::AckOrResolveByUserRequest.new # AckOrResolveByUserRequest | Ack/Resolve payload


begin
  #Resolve all incidents for which a user was paged.
  result = api_instance.api_public_v1_incidents_by_user_resolve_patch(x_vo_api_id, x_vo_api_key, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling IncidentsApi->api_public_v1_incidents_by_user_resolve_patch: #{e}"
end
```

### Parameters

| Name             | Type                                                          | Description         | Notes |
| ---------------- | ------------------------------------------------------------- | ------------------- | ----- |
| **x_vo_api_id**  | **String**                                                    | Your API ID         |
| **x_vo_api_key** | **String**                                                    | Your API Key        |
| **body**         | [**AckOrResolveByUserRequest**](AckOrResolveByUserRequest.md) | Ack/Resolve payload |

### Return type

[**AckOrResolveResponse**](AckOrResolveResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_incidents_get**

> IncidentList api_public_v1_incidents_get(x_vo_api_id, x_vo_api_key, )

Get current incident information

Get a list of the currently open, acknowledged and recently resolved incidents. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::IncidentsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key


begin
  #Get current incident information
  result = api_instance.api_public_v1_incidents_get(x_vo_api_id, x_vo_api_key, )
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling IncidentsApi->api_public_v1_incidents_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description  | Notes |
| ---------------- | ---------- | ------------ | ----- |
| **x_vo_api_id**  | **String** | Your API ID  |
| **x_vo_api_key** | **String** | Your API Key |

### Return type

[**IncidentList**](IncidentList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_incidents_incident_number_get**

> IncidentInfo api_public_v1_incidents_incident_number_get(x_vo_api_id, x_vo_api_key, incident_number)

Get a single incident

Get detailed data for a single incident with the provided incident number, if it exists. The incident will be returned regardless if it is active or not. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::IncidentsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

incident_number = 56 # Integer | The Victorops incident number


begin
  #Get a single incident
  result = api_instance.api_public_v1_incidents_incident_number_get(x_vo_api_id, x_vo_api_key, incident_number)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling IncidentsApi->api_public_v1_incidents_incident_number_get: #{e}"
end
```

### Parameters

| Name                | Type        | Description                   | Notes |
| ------------------- | ----------- | ----------------------------- | ----- |
| **x_vo_api_id**     | **String**  | Your API ID                   |
| **x_vo_api_key**    | **String**  | Your API Key                  |
| **incident_number** | **Integer** | The Victorops incident number |

### Return type

[**IncidentInfo**](IncidentInfo.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_incidents_incident_number_notes_get**

> Notes api_public_v1_incidents_incident_number_notes_get(x_vo_api_id, x_vo_api_key, incident_number)

Get the notes associated with an incident

Get notes any associated with a single incident with the provided incident number. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::IncidentsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

incident_number = 56 # Integer | The incident number


begin
  #Get the notes associated with an incident
  result = api_instance.api_public_v1_incidents_incident_number_notes_get(x_vo_api_id, x_vo_api_key, incident_number)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling IncidentsApi->api_public_v1_incidents_incident_number_notes_get: #{e}"
end
```

### Parameters

| Name                | Type        | Description         | Notes |
| ------------------- | ----------- | ------------------- | ----- |
| **x_vo_api_id**     | **String**  | Your API ID         |
| **x_vo_api_key**    | **String**  | Your API Key        |
| **incident_number** | **Integer** | The incident number |

### Return type

[**Notes**](Notes.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_incidents_incident_number_notes_note_name_delete**

> api_public_v1_incidents_incident_number_notes_note_name_delete(x_vo_api_id, x_vo_api_key, incident_number, note_name)

Delete a Note

Delete a note. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::IncidentsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

incident_number = 56 # Integer | The incident number

note_name = 'note_name_example' # String | The html encoded name field of the note


begin
  #Delete a Note
  api_instance.api_public_v1_incidents_incident_number_notes_note_name_delete(x_vo_api_id, x_vo_api_key, incident_number, note_name)
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling IncidentsApi->api_public_v1_incidents_incident_number_notes_note_name_delete: #{e}"
end
```

### Parameters

| Name                | Type        | Description                             | Notes |
| ------------------- | ----------- | --------------------------------------- | ----- |
| **x_vo_api_id**     | **String**  | Your API ID                             |
| **x_vo_api_key**    | **String**  | Your API Key                            |
| **incident_number** | **Integer** | The incident number                     |
| **note_name**       | **String**  | The html encoded name field of the note |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_incidents_incident_number_notes_note_name_put**

> api_public_v1_incidents_incident_number_notes_note_name_put(x_vo_api_id, x_vo_api_key, body, incident_number, note_name)

Update a Note

Update a note. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::IncidentsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::NotesPayload.new # NotesPayload |

incident_number = 56 # Integer | The incident number

note_name = 'note_name_example' # String | The html encoded name field of the note


begin
  #Update a Note
  api_instance.api_public_v1_incidents_incident_number_notes_note_name_put(x_vo_api_id, x_vo_api_key, body, incident_number, note_name)
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling IncidentsApi->api_public_v1_incidents_incident_number_notes_note_name_put: #{e}"
end
```

### Parameters

| Name                | Type                                | Description                             | Notes |
| ------------------- | ----------------------------------- | --------------------------------------- | ----- |
| **x_vo_api_id**     | **String**                          | Your API ID                             |
| **x_vo_api_key**    | **String**                          | Your API Key                            |
| **body**            | [**NotesPayload**](NotesPayload.md) |                                         |
| **incident_number** | **Integer**                         | The incident number                     |
| **note_name**       | **String**                          | The html encoded name field of the note |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_incidents_incident_number_notes_post**

> Notes api_public_v1_incidents_incident_number_notes_post(x_vo_api_id, x_vo_api_key, body, incident_number)

Create a new Note

Create a new note. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::IncidentsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::NotesPayload.new # NotesPayload |

incident_number = 56 # Integer | The incident number


begin
  #Create a new Note
  result = api_instance.api_public_v1_incidents_incident_number_notes_post(x_vo_api_id, x_vo_api_key, body, incident_number)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling IncidentsApi->api_public_v1_incidents_incident_number_notes_post: #{e}"
end
```

### Parameters

| Name                | Type                                | Description         | Notes |
| ------------------- | ----------------------------------- | ------------------- | ----- |
| **x_vo_api_id**     | **String**                          | Your API ID         |
| **x_vo_api_key**    | **String**                          | Your API Key        |
| **body**            | [**NotesPayload**](NotesPayload.md) |                     |
| **incident_number** | **Integer**                         | The incident number |

### Return type

[**Notes**](Notes.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_incidents_post**

> Note api_public_v1_incidents_post(x_vo_api_id, x_vo_api_key, body)

Create a new incident

Create a new incident. This call replicates the function of our <a href=\"https://help.victorops.com/knowledge-base/manual-incident-creation/\">manual incident creation process</a>. Monitoring tools and custom integrations should be configured using our <a href=\"https://help.victorops.com/knowledge-base/victorops-restendpoint-integration/\">REST Endpoint</a>. The \"isMultiResponder\" option will require a response from each paged user and escalation policy before paging is stopped. The option is available only to Enterprise accounts. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::IncidentsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::CreateIncidentRequest.new # CreateIncidentRequest | The incident details


begin
  #Create a new incident
  result = api_instance.api_public_v1_incidents_post(x_vo_api_id, x_vo_api_key, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling IncidentsApi->api_public_v1_incidents_post: #{e}"
end
```

### Parameters

| Name             | Type                                                  | Description          | Notes |
| ---------------- | ----------------------------------------------------- | -------------------- | ----- |
| **x_vo_api_id**  | **String**                                            | Your API ID          |
| **x_vo_api_key** | **String**                                            | Your API Key         |
| **body**         | [**CreateIncidentRequest**](CreateIncidentRequest.md) | The incident details |

### Return type

[**Note**](Note.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_incidents_reroute_post**

> RerouteStatusResponse api_public_v1_incidents_reroute_post(x_vo_api_id, x_vo_api_key, body)

Reroute one or more incidents to one or more new routable destinations.

Reroute one or more incidents to one or more users and/or escalation policies. The \"addTargets\" option converts the incident to requiring a response from each paged user and escalation policy before paging is stopped. The option is available only to Enterprise accounts. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::IncidentsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::RerouteCollection.new # RerouteCollection | The reroute rules


begin
  #Reroute one or more incidents to one or more new routable destinations.
  result = api_instance.api_public_v1_incidents_reroute_post(x_vo_api_id, x_vo_api_key, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling IncidentsApi->api_public_v1_incidents_reroute_post: #{e}"
end
```

### Parameters

| Name             | Type                                          | Description       | Notes |
| ---------------- | --------------------------------------------- | ----------------- | ----- |
| **x_vo_api_id**  | **String**                                    | Your API ID       |
| **x_vo_api_key** | **String**                                    | Your API Key      |
| **body**         | [**RerouteCollection**](RerouteCollection.md) | The reroute rules |

### Return type

[**RerouteStatusResponse**](RerouteStatusResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_incidents_resolve_patch**

> AckOrResolveResponse api_public_v1_incidents_resolve_patch(x_vo_api_id, x_vo_api_key, body)

Resolve an incident or list of incidents

The incident(s) must be currently open. The user supplied must be a valid VictorOps user and a member of your organization. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::IncidentsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::AckOrResolveRequest.new # AckOrResolveRequest | Ack/Resolve payload


begin
  #Resolve an incident or list of incidents
  result = api_instance.api_public_v1_incidents_resolve_patch(x_vo_api_id, x_vo_api_key, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling IncidentsApi->api_public_v1_incidents_resolve_patch: #{e}"
end
```

### Parameters

| Name             | Type                                              | Description         | Notes |
| ---------------- | ------------------------------------------------- | ------------------- | ----- |
| **x_vo_api_id**  | **String**                                        | Your API ID         |
| **x_vo_api_key** | **String**                                        | Your API Key        |
| **body**         | [**AckOrResolveRequest**](AckOrResolveRequest.md) | Ack/Resolve payload |

### Return type

[**AckOrResolveResponse**](AckOrResolveResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
