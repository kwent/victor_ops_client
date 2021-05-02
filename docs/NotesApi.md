# VictorOpsClient::NotesApi

All URIs are relative to *https://api.victorops.com*

| Method                                                                                                                                           | HTTP request                                                          | Description                               |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------- | ----------------------------------------- |
| [**api_public_v1_incidents_incident_number_notes_get**](NotesApi.md#api_public_v1_incidents_incident_number_notes_get)                           | **GET** /api-public/v1/incidents/{incidentNumber}/notes               | Get the notes associated with an incident |
| [**api_public_v1_incidents_incident_number_notes_note_name_delete**](NotesApi.md#api_public_v1_incidents_incident_number_notes_note_name_delete) | **DELETE** /api-public/v1/incidents/{incidentNumber}/notes/{noteName} | Delete a Note                             |
| [**api_public_v1_incidents_incident_number_notes_note_name_put**](NotesApi.md#api_public_v1_incidents_incident_number_notes_note_name_put)       | **PUT** /api-public/v1/incidents/{incidentNumber}/notes/{noteName}    | Update a Note                             |
| [**api_public_v1_incidents_incident_number_notes_post**](NotesApi.md#api_public_v1_incidents_incident_number_notes_post)                         | **POST** /api-public/v1/incidents/{incidentNumber}/notes              | Create a new Note                         |

# **api_public_v1_incidents_incident_number_notes_get**

> Notes api_public_v1_incidents_incident_number_notes_get(x_vo_api_id, x_vo_api_key, incident_number)

Get the notes associated with an incident

Get notes any associated with a single incident with the provided incident number. This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::NotesApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

incident_number = 56 # Integer | The incident number


begin
  #Get the notes associated with an incident
  result = api_instance.api_public_v1_incidents_incident_number_notes_get(x_vo_api_id, x_vo_api_key, incident_number)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling NotesApi->api_public_v1_incidents_incident_number_notes_get: #{e}"
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

api_instance = VictorOpsClient::NotesApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

incident_number = 56 # Integer | The incident number

note_name = 'note_name_example' # String | The html encoded name field of the note


begin
  #Delete a Note
  api_instance.api_public_v1_incidents_incident_number_notes_note_name_delete(x_vo_api_id, x_vo_api_key, incident_number, note_name)
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling NotesApi->api_public_v1_incidents_incident_number_notes_note_name_delete: #{e}"
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

api_instance = VictorOpsClient::NotesApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::NotesPayload.new # NotesPayload |

incident_number = 56 # Integer | The incident number

note_name = 'note_name_example' # String | The html encoded name field of the note


begin
  #Update a Note
  api_instance.api_public_v1_incidents_incident_number_notes_note_name_put(x_vo_api_id, x_vo_api_key, body, incident_number, note_name)
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling NotesApi->api_public_v1_incidents_incident_number_notes_note_name_put: #{e}"
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

api_instance = VictorOpsClient::NotesApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

body = VictorOpsClient::NotesPayload.new # NotesPayload |

incident_number = 56 # Integer | The incident number


begin
  #Create a new Note
  result = api_instance.api_public_v1_incidents_incident_number_notes_post(x_vo_api_id, x_vo_api_key, body, incident_number)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling NotesApi->api_public_v1_incidents_incident_number_notes_post: #{e}"
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
