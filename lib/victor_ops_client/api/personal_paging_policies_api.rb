=begin
#VictorOps API

#This API allows you to interact with the VictorOps platform in various ways. Your account may be limited to a total number of API calls per month. Also, some of these API calls have rate limits.  https protocol is required to use this API.  NOTE: In this documentation when creating a sample curl request (clicking the TRY IT OUT! button), in some API viewing interfaces, the '@' in an email address may be encoded. Please note that the REST endpoints will not process the encoded version. Make sure that the encoded character '%40' is changed to its unencoded form before submitting the curl request. 

OpenAPI spec version: 0.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module VictorOpsClient
  class PersonalPagingPoliciesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the user's paging policy
    # Get all the paging policy steps for the user on the org associated with the API key  This API may be called a maximum of 1 time per second. 
    # @param username Your username
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def api_public_v1_profile_username_policies_get(username, x_vo_api_id, x_vo_api_key, opts = {})
      data, _status_code, _headers = api_public_v1_profile_username_policies_get_with_http_info(username, x_vo_api_id, x_vo_api_key, opts)
      data
    end

    # Get the user&#39;s paging policy
    # Get all the paging policy steps for the user on the org associated with the API key  This API may be called a maximum of 1 time per second. 
    # @param username Your username
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def api_public_v1_profile_username_policies_get_with_http_info(username, x_vo_api_id, x_vo_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_get ...'
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_get"
      end
      # verify the required parameter 'x_vo_api_id' is set
      if @api_client.config.client_side_validation && x_vo_api_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_id' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_get"
      end
      # verify the required parameter 'x_vo_api_key' is set
      if @api_client.config.client_side_validation && x_vo_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_key' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_get"
      end
      # resource path
      local_var_path = '/api-public/v1/profile/{username}/policies'.sub('{' + 'username' + '}', username.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-VO-Api-Id'] = x_vo_api_id
      header_params[:'X-VO-Api-Key'] = x_vo_api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonalPagingPoliciesApi#api_public_v1_profile_username_policies_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a paging policy step
    # Create a paging policy step  This API may be called a maximum of 2 times per second. 
    # @param username Your username
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def api_public_v1_profile_username_policies_post(username, x_vo_api_id, x_vo_api_key, body, opts = {})
      data, _status_code, _headers = api_public_v1_profile_username_policies_post_with_http_info(username, x_vo_api_id, x_vo_api_key, body, opts)
      data
    end

    # Create a paging policy step
    # Create a paging policy step  This API may be called a maximum of 2 times per second. 
    # @param username Your username
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def api_public_v1_profile_username_policies_post_with_http_info(username, x_vo_api_id, x_vo_api_key, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_post ...'
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_post"
      end
      # verify the required parameter 'x_vo_api_id' is set
      if @api_client.config.client_side_validation && x_vo_api_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_id' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_post"
      end
      # verify the required parameter 'x_vo_api_key' is set
      if @api_client.config.client_side_validation && x_vo_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_key' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_post"
      end
      # resource path
      local_var_path = '/api-public/v1/profile/{username}/policies'.sub('{' + 'username' + '}', username.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-VO-Api-Id'] = x_vo_api_id
      header_params[:'X-VO-Api-Key'] = x_vo_api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonalPagingPoliciesApi#api_public_v1_profile_username_policies_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a paging policy step
    # Get a paging policy step  This API may be called a maximum of 2 times per second. 
    # @param username Your username
    # @param step Paging policy step
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def api_public_v1_profile_username_policies_step_get(username, step, x_vo_api_id, x_vo_api_key, opts = {})
      data, _status_code, _headers = api_public_v1_profile_username_policies_step_get_with_http_info(username, step, x_vo_api_id, x_vo_api_key, opts)
      data
    end

    # Get a paging policy step
    # Get a paging policy step  This API may be called a maximum of 2 times per second. 
    # @param username Your username
    # @param step Paging policy step
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def api_public_v1_profile_username_policies_step_get_with_http_info(username, step, x_vo_api_id, x_vo_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_get ...'
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_get"
      end
      # verify the required parameter 'step' is set
      if @api_client.config.client_side_validation && step.nil?
        fail ArgumentError, "Missing the required parameter 'step' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_get"
      end
      # verify the required parameter 'x_vo_api_id' is set
      if @api_client.config.client_side_validation && x_vo_api_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_id' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_get"
      end
      # verify the required parameter 'x_vo_api_key' is set
      if @api_client.config.client_side_validation && x_vo_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_key' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_get"
      end
      # resource path
      local_var_path = '/api-public/v1/profile/{username}/policies/{step}'.sub('{' + 'username' + '}', username.to_s).sub('{' + 'step' + '}', step.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-VO-Api-Id'] = x_vo_api_id
      header_params[:'X-VO-Api-Key'] = x_vo_api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonalPagingPoliciesApi#api_public_v1_profile_username_policies_step_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a rule for a paging policy step
    # Create a rule for a paging policy step  This API may be called a maximum of 2 times per second. 
    # @param username Your username
    # @param step Paging policy step
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def api_public_v1_profile_username_policies_step_post(username, step, x_vo_api_id, x_vo_api_key, body, opts = {})
      data, _status_code, _headers = api_public_v1_profile_username_policies_step_post_with_http_info(username, step, x_vo_api_id, x_vo_api_key, body, opts)
      data
    end

    # Create a rule for a paging policy step
    # Create a rule for a paging policy step  This API may be called a maximum of 2 times per second. 
    # @param username Your username
    # @param step Paging policy step
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def api_public_v1_profile_username_policies_step_post_with_http_info(username, step, x_vo_api_id, x_vo_api_key, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_post ...'
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_post"
      end
      # verify the required parameter 'step' is set
      if @api_client.config.client_side_validation && step.nil?
        fail ArgumentError, "Missing the required parameter 'step' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_post"
      end
      # verify the required parameter 'x_vo_api_id' is set
      if @api_client.config.client_side_validation && x_vo_api_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_id' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_post"
      end
      # verify the required parameter 'x_vo_api_key' is set
      if @api_client.config.client_side_validation && x_vo_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_key' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_post"
      end
      # resource path
      local_var_path = '/api-public/v1/profile/{username}/policies/{step}'.sub('{' + 'username' + '}', username.to_s).sub('{' + 'step' + '}', step.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-VO-Api-Id'] = x_vo_api_id
      header_params[:'X-VO-Api-Key'] = x_vo_api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonalPagingPoliciesApi#api_public_v1_profile_username_policies_step_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a paging policy step
    # Update a paging policy step  This API may be called a maximum of 2 times per second. 
    # @param username Your username
    # @param step Paging policy step
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def api_public_v1_profile_username_policies_step_put(username, step, x_vo_api_id, x_vo_api_key, body, opts = {})
      data, _status_code, _headers = api_public_v1_profile_username_policies_step_put_with_http_info(username, step, x_vo_api_id, x_vo_api_key, body, opts)
      data
    end

    # Update a paging policy step
    # Update a paging policy step  This API may be called a maximum of 2 times per second. 
    # @param username Your username
    # @param step Paging policy step
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def api_public_v1_profile_username_policies_step_put_with_http_info(username, step, x_vo_api_id, x_vo_api_key, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_put ...'
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_put"
      end
      # verify the required parameter 'step' is set
      if @api_client.config.client_side_validation && step.nil?
        fail ArgumentError, "Missing the required parameter 'step' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_put"
      end
      # verify the required parameter 'x_vo_api_id' is set
      if @api_client.config.client_side_validation && x_vo_api_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_id' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_put"
      end
      # verify the required parameter 'x_vo_api_key' is set
      if @api_client.config.client_side_validation && x_vo_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_key' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_put"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_put"
      end
      # resource path
      local_var_path = '/api-public/v1/profile/{username}/policies/{step}'.sub('{' + 'username' + '}', username.to_s).sub('{' + 'step' + '}', step.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-VO-Api-Id'] = x_vo_api_id
      header_params[:'X-VO-Api-Key'] = x_vo_api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonalPagingPoliciesApi#api_public_v1_profile_username_policies_step_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a rule from a paging policy step
    # Delete a rule from a paging policy step  This API may be called a maximum of 2 times per second. 
    # @param username Your username
    # @param step Paging policy step
    # @param rule Rule for a paging policy step
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def api_public_v1_profile_username_policies_step_rule_delete(username, step, rule, x_vo_api_id, x_vo_api_key, opts = {})
      data, _status_code, _headers = api_public_v1_profile_username_policies_step_rule_delete_with_http_info(username, step, rule, x_vo_api_id, x_vo_api_key, opts)
      data
    end

    # Delete a rule from a paging policy step
    # Delete a rule from a paging policy step  This API may be called a maximum of 2 times per second. 
    # @param username Your username
    # @param step Paging policy step
    # @param rule Rule for a paging policy step
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def api_public_v1_profile_username_policies_step_rule_delete_with_http_info(username, step, rule, x_vo_api_id, x_vo_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_rule_delete ...'
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_rule_delete"
      end
      # verify the required parameter 'step' is set
      if @api_client.config.client_side_validation && step.nil?
        fail ArgumentError, "Missing the required parameter 'step' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_rule_delete"
      end
      # verify the required parameter 'rule' is set
      if @api_client.config.client_side_validation && rule.nil?
        fail ArgumentError, "Missing the required parameter 'rule' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_rule_delete"
      end
      # verify the required parameter 'x_vo_api_id' is set
      if @api_client.config.client_side_validation && x_vo_api_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_id' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_rule_delete"
      end
      # verify the required parameter 'x_vo_api_key' is set
      if @api_client.config.client_side_validation && x_vo_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_key' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_rule_delete"
      end
      # resource path
      local_var_path = '/api-public/v1/profile/{username}/policies/{step}/{rule}'.sub('{' + 'username' + '}', username.to_s).sub('{' + 'step' + '}', step.to_s).sub('{' + 'rule' + '}', rule.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-VO-Api-Id'] = x_vo_api_id
      header_params[:'X-VO-Api-Key'] = x_vo_api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonalPagingPoliciesApi#api_public_v1_profile_username_policies_step_rule_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a rule from a paging policy step
    # Get a rule from a paging policy step  This API may be called a maximum of 2 times per second. 
    # @param username Your username
    # @param step Paging policy step
    # @param rule Rule for a paging policy step
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def api_public_v1_profile_username_policies_step_rule_get(username, step, rule, x_vo_api_id, x_vo_api_key, opts = {})
      data, _status_code, _headers = api_public_v1_profile_username_policies_step_rule_get_with_http_info(username, step, rule, x_vo_api_id, x_vo_api_key, opts)
      data
    end

    # Get a rule from a paging policy step
    # Get a rule from a paging policy step  This API may be called a maximum of 2 times per second. 
    # @param username Your username
    # @param step Paging policy step
    # @param rule Rule for a paging policy step
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def api_public_v1_profile_username_policies_step_rule_get_with_http_info(username, step, rule, x_vo_api_id, x_vo_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_rule_get ...'
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_rule_get"
      end
      # verify the required parameter 'step' is set
      if @api_client.config.client_side_validation && step.nil?
        fail ArgumentError, "Missing the required parameter 'step' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_rule_get"
      end
      # verify the required parameter 'rule' is set
      if @api_client.config.client_side_validation && rule.nil?
        fail ArgumentError, "Missing the required parameter 'rule' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_rule_get"
      end
      # verify the required parameter 'x_vo_api_id' is set
      if @api_client.config.client_side_validation && x_vo_api_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_id' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_rule_get"
      end
      # verify the required parameter 'x_vo_api_key' is set
      if @api_client.config.client_side_validation && x_vo_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_key' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_rule_get"
      end
      # resource path
      local_var_path = '/api-public/v1/profile/{username}/policies/{step}/{rule}'.sub('{' + 'username' + '}', username.to_s).sub('{' + 'step' + '}', step.to_s).sub('{' + 'rule' + '}', rule.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-VO-Api-Id'] = x_vo_api_id
      header_params[:'X-VO-Api-Key'] = x_vo_api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonalPagingPoliciesApi#api_public_v1_profile_username_policies_step_rule_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a rule for a paging policy step
    # Update a rule for a paging policy step  This API may be called a maximum of 2 times per second. 
    # @param username Your username
    # @param step Paging policy step
    # @param rule Rule for a paging policy step
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def api_public_v1_profile_username_policies_step_rule_put(username, step, rule, x_vo_api_id, x_vo_api_key, body, opts = {})
      data, _status_code, _headers = api_public_v1_profile_username_policies_step_rule_put_with_http_info(username, step, rule, x_vo_api_id, x_vo_api_key, body, opts)
      data
    end

    # Update a rule for a paging policy step
    # Update a rule for a paging policy step  This API may be called a maximum of 2 times per second. 
    # @param username Your username
    # @param step Paging policy step
    # @param rule Rule for a paging policy step
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def api_public_v1_profile_username_policies_step_rule_put_with_http_info(username, step, rule, x_vo_api_id, x_vo_api_key, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_rule_put ...'
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_rule_put"
      end
      # verify the required parameter 'step' is set
      if @api_client.config.client_side_validation && step.nil?
        fail ArgumentError, "Missing the required parameter 'step' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_rule_put"
      end
      # verify the required parameter 'rule' is set
      if @api_client.config.client_side_validation && rule.nil?
        fail ArgumentError, "Missing the required parameter 'rule' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_rule_put"
      end
      # verify the required parameter 'x_vo_api_id' is set
      if @api_client.config.client_side_validation && x_vo_api_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_id' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_rule_put"
      end
      # verify the required parameter 'x_vo_api_key' is set
      if @api_client.config.client_side_validation && x_vo_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_key' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_rule_put"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PersonalPagingPoliciesApi.api_public_v1_profile_username_policies_step_rule_put"
      end
      # resource path
      local_var_path = '/api-public/v1/profile/{username}/policies/{step}/{rule}'.sub('{' + 'username' + '}', username.to_s).sub('{' + 'step' + '}', step.to_s).sub('{' + 'rule' + '}', rule.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-VO-Api-Id'] = x_vo_api_id
      header_params[:'X-VO-Api-Key'] = x_vo_api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonalPagingPoliciesApi#api_public_v1_profile_username_policies_step_rule_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
