# VictorOpsClient::UserContactMethodsApi

All URIs are relative to *https://api.victorops.com*

| Method                                                                                                                                                              | HTTP request                                                              | Description                                  |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------- | -------------------------------------------- |
| [**api_public_v1_user_user_contact_methods_devices_contact_id_delete**](UserContactMethodsApi.md#api_public_v1_user_user_contact_methods_devices_contact_id_delete) | **DELETE** /api-public/v1/user/{user}/contact-methods/devices/{contactId} | Delete a contact device for a user           |
| [**api_public_v1_user_user_contact_methods_devices_contact_id_get**](UserContactMethodsApi.md#api_public_v1_user_user_contact_methods_devices_contact_id_get)       | **GET** /api-public/v1/user/{user}/contact-methods/devices/{contactId}    | Get the indicated contact device for a user  |
| [**api_public_v1_user_user_contact_methods_devices_contact_id_put**](UserContactMethodsApi.md#api_public_v1_user_user_contact_methods_devices_contact_id_put)       | **PUT** /api-public/v1/user/{user}/contact-methods/devices/{contactId}    | Update a contact device for a user           |
| [**api_public_v1_user_user_contact_methods_devices_get**](UserContactMethodsApi.md#api_public_v1_user_user_contact_methods_devices_get)                             | **GET** /api-public/v1/user/{user}/contact-methods/devices                | Get a list of all contact devices for a user |
| [**api_public_v1_user_user_contact_methods_emails_contact_id_delete**](UserContactMethodsApi.md#api_public_v1_user_user_contact_methods_emails_contact_id_delete)   | **DELETE** /api-public/v1/user/{user}/contact-methods/emails/{contactId}  | Delete a contact email for a user            |
| [**api_public_v1_user_user_contact_methods_emails_contact_id_get**](UserContactMethodsApi.md#api_public_v1_user_user_contact_methods_emails_contact_id_get)         | **GET** /api-public/v1/user/{user}/contact-methods/emails/{contactId}     | Get the indicated contact email for a user   |
| [**api_public_v1_user_user_contact_methods_emails_get**](UserContactMethodsApi.md#api_public_v1_user_user_contact_methods_emails_get)                               | **GET** /api-public/v1/user/{user}/contact-methods/emails                 | Get a list of all contact emails for a user  |
| [**api_public_v1_user_user_contact_methods_emails_post**](UserContactMethodsApi.md#api_public_v1_user_user_contact_methods_emails_post)                             | **POST** /api-public/v1/user/{user}/contact-methods/emails                | Create a contact emails for a user           |
| [**api_public_v1_user_user_contact_methods_get**](UserContactMethodsApi.md#api_public_v1_user_user_contact_methods_get)                                             | **GET** /api-public/v1/user/{user}/contact-methods                        | Get a list of all contact methods for a user |
| [**api_public_v1_user_user_contact_methods_phones_contact_id_delete**](UserContactMethodsApi.md#api_public_v1_user_user_contact_methods_phones_contact_id_delete)   | **DELETE** /api-public/v1/user/{user}/contact-methods/phones/{contactId}  | Delete a contact phone for a user            |
| [**api_public_v1_user_user_contact_methods_phones_contact_id_get**](UserContactMethodsApi.md#api_public_v1_user_user_contact_methods_phones_contact_id_get)         | **GET** /api-public/v1/user/{user}/contact-methods/phones/{contactId}     | Get the indicated contact phone for a user   |
| [**api_public_v1_user_user_contact_methods_phones_get**](UserContactMethodsApi.md#api_public_v1_user_user_contact_methods_phones_get)                               | **GET** /api-public/v1/user/{user}/contact-methods/phones                 | Get a list of all contact phones for a user  |
| [**api_public_v1_user_user_contact_methods_phones_post**](UserContactMethodsApi.md#api_public_v1_user_user_contact_methods_phones_post)                             | **POST** /api-public/v1/user/{user}/contact-methods/phones                | Create a contact phones for a user           |

# **api_public_v1_user_user_contact_methods_devices_contact_id_delete**

> ContactDevice api_public_v1_user_user_contact_methods_devices_contact_id_delete(x_vo_api_id, x_vo_api_key, user, contact_id)

Delete a contact device for a user

Delete a contact device for a user This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::UserContactMethodsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

user = 'user_example' # String | The VictorOps user ID

contact_id = 'contact_id_example' # String | The unique contact identifier


begin
  #Delete a contact device for a user
  result = api_instance.api_public_v1_user_user_contact_methods_devices_contact_id_delete(x_vo_api_id, x_vo_api_key, user, contact_id)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling UserContactMethodsApi->api_public_v1_user_user_contact_methods_devices_contact_id_delete: #{e}"
end
```

### Parameters

| Name             | Type       | Description                   | Notes |
| ---------------- | ---------- | ----------------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID                   |
| **x_vo_api_key** | **String** | Your API Key                  |
| **user**         | **String** | The VictorOps user ID         |
| **contact_id**   | **String** | The unique contact identifier |

### Return type

[**ContactDevice**](ContactDevice.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_user_user_contact_methods_devices_contact_id_get**

> Array&lt;ContactDevice&gt; api_public_v1_user_user_contact_methods_devices_contact_id_get(x_vo_api_id, x_vo_api_key, user, contact_id)

Get the indicated contact device for a user

Get the indicated contact device for a user This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::UserContactMethodsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

user = 'user_example' # String | The VictorOps user ID

contact_id = 'contact_id_example' # String | The unique contact identifier


begin
  #Get the indicated contact device for a user
  result = api_instance.api_public_v1_user_user_contact_methods_devices_contact_id_get(x_vo_api_id, x_vo_api_key, user, contact_id)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling UserContactMethodsApi->api_public_v1_user_user_contact_methods_devices_contact_id_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description                   | Notes |
| ---------------- | ---------- | ----------------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID                   |
| **x_vo_api_key** | **String** | Your API Key                  |
| **user**         | **String** | The VictorOps user ID         |
| **contact_id**   | **String** | The unique contact identifier |

### Return type

[**Array&lt;ContactDevice&gt;**](ContactDevice.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_user_user_contact_methods_devices_contact_id_put**

> ContactDevice api_public_v1_user_user_contact_methods_devices_contact_id_put(x_vo_api_id, x_vo_api_key, user, contact_id, body)

Update a contact device for a user

Update a contact device for a user This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::UserContactMethodsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

user = 'user_example' # String | The VictorOps user ID

contact_id = 'contact_id_example' # String | The unique contact identifier

body = VictorOpsClient::ContactDeviceAdd.new # ContactDeviceAdd | The contact device


begin
  #Update a contact device for a user
  result = api_instance.api_public_v1_user_user_contact_methods_devices_contact_id_put(x_vo_api_id, x_vo_api_key, user, contact_id, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling UserContactMethodsApi->api_public_v1_user_user_contact_methods_devices_contact_id_put: #{e}"
end
```

### Parameters

| Name             | Type                                        | Description                   | Notes |
| ---------------- | ------------------------------------------- | ----------------------------- | ----- |
| **x_vo_api_id**  | **String**                                  | Your API ID                   |
| **x_vo_api_key** | **String**                                  | Your API Key                  |
| **user**         | **String**                                  | The VictorOps user ID         |
| **contact_id**   | **String**                                  | The unique contact identifier |
| **body**         | [**ContactDeviceAdd**](ContactDeviceAdd.md) | The contact device            |

### Return type

[**ContactDevice**](ContactDevice.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_user_user_contact_methods_devices_get**

> Array&lt;ContactDevice&gt; api_public_v1_user_user_contact_methods_devices_get(x_vo_api_id, x_vo_api_key, user)

Get a list of all contact devices for a user

Get the contact methods for a user This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::UserContactMethodsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

user = 'user_example' # String | The VictorOps user ID


begin
  #Get a list of all contact devices for a user
  result = api_instance.api_public_v1_user_user_contact_methods_devices_get(x_vo_api_id, x_vo_api_key, user)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling UserContactMethodsApi->api_public_v1_user_user_contact_methods_devices_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description           | Notes |
| ---------------- | ---------- | --------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID           |
| **x_vo_api_key** | **String** | Your API Key          |
| **user**         | **String** | The VictorOps user ID |

### Return type

[**Array&lt;ContactDevice&gt;**](ContactDevice.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_user_user_contact_methods_emails_contact_id_delete**

> UserContact api_public_v1_user_user_contact_methods_emails_contact_id_delete(x_vo_api_id, x_vo_api_key, user, contact_id)

Delete a contact email for a user

Delete the indicated contact email for the user This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::UserContactMethodsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

user = 'user_example' # String | The VictorOps user ID

contact_id = 'contact_id_example' # String | The unique contact identifier


begin
  #Delete a contact email for a user
  result = api_instance.api_public_v1_user_user_contact_methods_emails_contact_id_delete(x_vo_api_id, x_vo_api_key, user, contact_id)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling UserContactMethodsApi->api_public_v1_user_user_contact_methods_emails_contact_id_delete: #{e}"
end
```

### Parameters

| Name             | Type       | Description                   | Notes |
| ---------------- | ---------- | ----------------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID                   |
| **x_vo_api_key** | **String** | Your API Key                  |
| **user**         | **String** | The VictorOps user ID         |
| **contact_id**   | **String** | The unique contact identifier |

### Return type

[**UserContact**](UserContact.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_user_user_contact_methods_emails_contact_id_get**

> Array&lt;UserContact&gt; api_public_v1_user_user_contact_methods_emails_contact_id_get(x_vo_api_id, x_vo_api_key, user, contact_id)

Get the indicated contact email for a user

Get the indicated contact email for a user This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::UserContactMethodsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

user = 'user_example' # String | The VictorOps user ID

contact_id = 'contact_id_example' # String | The unique contact identifier


begin
  #Get the indicated contact email for a user
  result = api_instance.api_public_v1_user_user_contact_methods_emails_contact_id_get(x_vo_api_id, x_vo_api_key, user, contact_id)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling UserContactMethodsApi->api_public_v1_user_user_contact_methods_emails_contact_id_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description                   | Notes |
| ---------------- | ---------- | ----------------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID                   |
| **x_vo_api_key** | **String** | Your API Key                  |
| **user**         | **String** | The VictorOps user ID         |
| **contact_id**   | **String** | The unique contact identifier |

### Return type

[**Array&lt;UserContact&gt;**](UserContact.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_user_user_contact_methods_emails_get**

> Array&lt;UserContact&gt; api_public_v1_user_user_contact_methods_emails_get(x_vo_api_id, x_vo_api_key, user)

Get a list of all contact emails for a user

Get the contact emails for a user This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::UserContactMethodsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

user = 'user_example' # String | The VictorOps user ID


begin
  #Get a list of all contact emails for a user
  result = api_instance.api_public_v1_user_user_contact_methods_emails_get(x_vo_api_id, x_vo_api_key, user)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling UserContactMethodsApi->api_public_v1_user_user_contact_methods_emails_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description           | Notes |
| ---------------- | ---------- | --------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID           |
| **x_vo_api_key** | **String** | Your API Key          |
| **user**         | **String** | The VictorOps user ID |

### Return type

[**Array&lt;UserContact&gt;**](UserContact.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_user_user_contact_methods_emails_post**

> UserContact api_public_v1_user_user_contact_methods_emails_post(x_vo_api_id, x_vo_api_key, user, body)

Create a contact emails for a user

Create a contact email for a user This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::UserContactMethodsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

user = 'user_example' # String | The VictorOps user ID

body = VictorOpsClient::ContactEmailAdd.new # ContactEmailAdd | The contact email


begin
  #Create a contact emails for a user
  result = api_instance.api_public_v1_user_user_contact_methods_emails_post(x_vo_api_id, x_vo_api_key, user, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling UserContactMethodsApi->api_public_v1_user_user_contact_methods_emails_post: #{e}"
end
```

### Parameters

| Name             | Type                                      | Description           | Notes |
| ---------------- | ----------------------------------------- | --------------------- | ----- |
| **x_vo_api_id**  | **String**                                | Your API ID           |
| **x_vo_api_key** | **String**                                | Your API Key          |
| **user**         | **String**                                | The VictorOps user ID |
| **body**         | [**ContactEmailAdd**](ContactEmailAdd.md) | The contact email     |

### Return type

[**UserContact**](UserContact.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_user_user_contact_methods_get**

> Object api_public_v1_user_user_contact_methods_get(x_vo_api_id, x_vo_api_key, user)

Get a list of all contact methods for a user

Get the contact methods for a user This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::UserContactMethodsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

user = 'user_example' # String | The VictorOps user ID


begin
  #Get a list of all contact methods for a user
  result = api_instance.api_public_v1_user_user_contact_methods_get(x_vo_api_id, x_vo_api_key, user)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling UserContactMethodsApi->api_public_v1_user_user_contact_methods_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description           | Notes |
| ---------------- | ---------- | --------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID           |
| **x_vo_api_key** | **String** | Your API Key          |
| **user**         | **String** | The VictorOps user ID |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_user_user_contact_methods_phones_contact_id_delete**

> UserContact api_public_v1_user_user_contact_methods_phones_contact_id_delete(x_vo_api_id, x_vo_api_key, user, contact_id)

Delete a contact phone for a user

Delete the indicated contact phone for the user This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::UserContactMethodsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

user = 'user_example' # String | The VictorOps user ID

contact_id = 'contact_id_example' # String | The unique contact identifier


begin
  #Delete a contact phone for a user
  result = api_instance.api_public_v1_user_user_contact_methods_phones_contact_id_delete(x_vo_api_id, x_vo_api_key, user, contact_id)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling UserContactMethodsApi->api_public_v1_user_user_contact_methods_phones_contact_id_delete: #{e}"
end
```

### Parameters

| Name             | Type       | Description                   | Notes |
| ---------------- | ---------- | ----------------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID                   |
| **x_vo_api_key** | **String** | Your API Key                  |
| **user**         | **String** | The VictorOps user ID         |
| **contact_id**   | **String** | The unique contact identifier |

### Return type

[**UserContact**](UserContact.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_user_user_contact_methods_phones_contact_id_get**

> Array&lt;UserContact&gt; api_public_v1_user_user_contact_methods_phones_contact_id_get(x_vo_api_id, x_vo_api_key, user, contact_id)

Get the indicated contact phone for a user

Get the indicated contact phone for a user This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::UserContactMethodsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

user = 'user_example' # String | The VictorOps user ID

contact_id = 'contact_id_example' # String | The unique contact identifier


begin
  #Get the indicated contact phone for a user
  result = api_instance.api_public_v1_user_user_contact_methods_phones_contact_id_get(x_vo_api_id, x_vo_api_key, user, contact_id)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling UserContactMethodsApi->api_public_v1_user_user_contact_methods_phones_contact_id_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description                   | Notes |
| ---------------- | ---------- | ----------------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID                   |
| **x_vo_api_key** | **String** | Your API Key                  |
| **user**         | **String** | The VictorOps user ID         |
| **contact_id**   | **String** | The unique contact identifier |

### Return type

[**Array&lt;UserContact&gt;**](UserContact.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_user_user_contact_methods_phones_get**

> Array&lt;UserContact&gt; api_public_v1_user_user_contact_methods_phones_get(x_vo_api_id, x_vo_api_key, user)

Get a list of all contact phones for a user

Get the contact phones for a user This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::UserContactMethodsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

user = 'user_example' # String | The VictorOps user ID


begin
  #Get a list of all contact phones for a user
  result = api_instance.api_public_v1_user_user_contact_methods_phones_get(x_vo_api_id, x_vo_api_key, user)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling UserContactMethodsApi->api_public_v1_user_user_contact_methods_phones_get: #{e}"
end
```

### Parameters

| Name             | Type       | Description           | Notes |
| ---------------- | ---------- | --------------------- | ----- |
| **x_vo_api_id**  | **String** | Your API ID           |
| **x_vo_api_key** | **String** | Your API Key          |
| **user**         | **String** | The VictorOps user ID |

### Return type

[**Array&lt;UserContact&gt;**](UserContact.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

# **api_public_v1_user_user_contact_methods_phones_post**

> UserContact api_public_v1_user_user_contact_methods_phones_post(x_vo_api_id, x_vo_api_key, user, body)

Create a contact phones for a user

Create a contact phone for a user This API may be called a maximum of 2 times per second.

### Example

```ruby
# load the gem
require 'victor_ops_client'

api_instance = VictorOpsClient::UserContactMethodsApi.new

x_vo_api_id = 'x_vo_api_id_example' # String | Your API ID

x_vo_api_key = 'x_vo_api_key_example' # String | Your API Key

user = 'user_example' # String | The VictorOps user ID

body = VictorOpsClient::ContactPhoneAdd.new # ContactPhoneAdd | The contact phone


begin
  #Create a contact phones for a user
  result = api_instance.api_public_v1_user_user_contact_methods_phones_post(x_vo_api_id, x_vo_api_key, user, body)
  p result
rescue VictorOpsClient::ApiError => e
  puts "Exception when calling UserContactMethodsApi->api_public_v1_user_user_contact_methods_phones_post: #{e}"
end
```

### Parameters

| Name             | Type                                      | Description           | Notes |
| ---------------- | ----------------------------------------- | --------------------- | ----- |
| **x_vo_api_id**  | **String**                                | Your API ID           |
| **x_vo_api_key** | **String**                                | Your API Key          |
| **user**         | **String**                                | The VictorOps user ID |
| **body**         | [**ContactPhoneAdd**](ContactPhoneAdd.md) | The contact phone     |

### Return type

[**UserContact**](UserContact.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
