=begin
#VictorOps API

#This API allows you to interact with the VictorOps platform in various ways. Your account may be limited to a total number of API calls per month. Also, some of these API calls have rate limits.  https protocol is required to use this API.  NOTE: In this documentation when creating a sample curl request (clicking the TRY IT OUT! button), in some API viewing interfaces, the '@' in an email address may be encoded. Please note that the REST endpoints will not process the encoded version. Make sure that the encoded character '%40' is changed to its unencoded form before submitting the curl request. 

OpenAPI spec version: 0.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module VictorOpsClient
  class MaintenanceModeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get an organization's current maintenance mode state
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param [Hash] opts the optional parameters
    # @return [MaintenanceModeState]
    def api_public_v1_maintenancemode_get(x_vo_api_id, x_vo_api_key, opts = {})
      data, _status_code, _headers = api_public_v1_maintenancemode_get_with_http_info(x_vo_api_id, x_vo_api_key, opts)
      data
    end

    # Get an organization&#39;s current maintenance mode state
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(MaintenanceModeState, Fixnum, Hash)>] MaintenanceModeState data, response status code and response headers
    def api_public_v1_maintenancemode_get_with_http_info(x_vo_api_id, x_vo_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MaintenanceModeApi.api_public_v1_maintenancemode_get ...'
      end
      # verify the required parameter 'x_vo_api_id' is set
      if @api_client.config.client_side_validation && x_vo_api_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_id' when calling MaintenanceModeApi.api_public_v1_maintenancemode_get"
      end
      # verify the required parameter 'x_vo_api_key' is set
      if @api_client.config.client_side_validation && x_vo_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_key' when calling MaintenanceModeApi.api_public_v1_maintenancemode_get"
      end
      # resource path
      local_var_path = '/api-public/v1/maintenancemode'

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
        :return_type => 'MaintenanceModeState')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MaintenanceModeApi#api_public_v1_maintenancemode_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # End maintenance mode for routing keys
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param maintenancemodeid The id of the maintenance mode found in the active maintenance mode object
    # @param [Hash] opts the optional parameters
    # @return [MaintenanceModeState]
    def api_public_v1_maintenancemode_maintenancemodeid_end_put(x_vo_api_id, x_vo_api_key, maintenancemodeid, opts = {})
      data, _status_code, _headers = api_public_v1_maintenancemode_maintenancemodeid_end_put_with_http_info(x_vo_api_id, x_vo_api_key, maintenancemodeid, opts)
      data
    end

    # End maintenance mode for routing keys
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param maintenancemodeid The id of the maintenance mode found in the active maintenance mode object
    # @param [Hash] opts the optional parameters
    # @return [Array<(MaintenanceModeState, Fixnum, Hash)>] MaintenanceModeState data, response status code and response headers
    def api_public_v1_maintenancemode_maintenancemodeid_end_put_with_http_info(x_vo_api_id, x_vo_api_key, maintenancemodeid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MaintenanceModeApi.api_public_v1_maintenancemode_maintenancemodeid_end_put ...'
      end
      # verify the required parameter 'x_vo_api_id' is set
      if @api_client.config.client_side_validation && x_vo_api_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_id' when calling MaintenanceModeApi.api_public_v1_maintenancemode_maintenancemodeid_end_put"
      end
      # verify the required parameter 'x_vo_api_key' is set
      if @api_client.config.client_side_validation && x_vo_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_key' when calling MaintenanceModeApi.api_public_v1_maintenancemode_maintenancemodeid_end_put"
      end
      # verify the required parameter 'maintenancemodeid' is set
      if @api_client.config.client_side_validation && maintenancemodeid.nil?
        fail ArgumentError, "Missing the required parameter 'maintenancemodeid' when calling MaintenanceModeApi.api_public_v1_maintenancemode_maintenancemodeid_end_put"
      end
      # resource path
      local_var_path = '/api-public/v1/maintenancemode/{maintenancemodeid}/end'.sub('{' + 'maintenancemodeid' + '}', maintenancemodeid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['text/plain'])
      header_params[:'X-VO-Api-Id'] = x_vo_api_id
      header_params[:'X-VO-Api-Key'] = x_vo_api_key

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MaintenanceModeState')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MaintenanceModeApi#api_public_v1_maintenancemode_maintenancemodeid_end_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Start maintenance mode for routing keys
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param body the definition of the maintenance mode you want to start
    # @param [Hash] opts the optional parameters
    # @return [MaintenanceModeState]
    def api_public_v1_maintenancemode_start_post(x_vo_api_id, x_vo_api_key, body, opts = {})
      data, _status_code, _headers = api_public_v1_maintenancemode_start_post_with_http_info(x_vo_api_id, x_vo_api_key, body, opts)
      data
    end

    # Start maintenance mode for routing keys
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param body the definition of the maintenance mode you want to start
    # @param [Hash] opts the optional parameters
    # @return [Array<(MaintenanceModeState, Fixnum, Hash)>] MaintenanceModeState data, response status code and response headers
    def api_public_v1_maintenancemode_start_post_with_http_info(x_vo_api_id, x_vo_api_key, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MaintenanceModeApi.api_public_v1_maintenancemode_start_post ...'
      end
      # verify the required parameter 'x_vo_api_id' is set
      if @api_client.config.client_side_validation && x_vo_api_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_id' when calling MaintenanceModeApi.api_public_v1_maintenancemode_start_post"
      end
      # verify the required parameter 'x_vo_api_key' is set
      if @api_client.config.client_side_validation && x_vo_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_key' when calling MaintenanceModeApi.api_public_v1_maintenancemode_start_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MaintenanceModeApi.api_public_v1_maintenancemode_start_post"
      end
      # resource path
      local_var_path = '/api-public/v1/maintenancemode/start'

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
        :return_type => 'MaintenanceModeState')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MaintenanceModeApi#api_public_v1_maintenancemode_start_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
