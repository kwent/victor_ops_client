=begin
#VictorOps API

#This API allows you to interact with the VictorOps platform in various ways. Your account may be limited to a total number of API calls per month. Also, some of these API calls have rate limits.  https protocol is required to use this API.  NOTE: In this documentation when creating a sample curl request (clicking the TRY IT OUT! button), in some API viewing interfaces, the '@' in an email address may be encoded. Please note that the REST endpoints will not process the encoded version. Make sure that the encoded character '%40' is changed to its unencoded form before submitting the curl request. 

OpenAPI spec version: 0.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module VictorOpsClient
  class RoutingKeysApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List routing keys with associated teams
    # Retrieves a list of routing keys and associated teams. This API may be called a maximum of 2 times per second.
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param [Hash] opts the optional parameters
    # @return [ListRoutingKeysResponse]
    def api_public_v1_org_routing_keys_get(x_vo_api_id, x_vo_api_key, opts = {})
      data, _status_code, _headers = api_public_v1_org_routing_keys_get_with_http_info(x_vo_api_id, x_vo_api_key, opts)
      data
    end

    # List routing keys with associated teams
    # Retrieves a list of routing keys and associated teams. This API may be called a maximum of 2 times per second.
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListRoutingKeysResponse, Fixnum, Hash)>] ListRoutingKeysResponse data, response status code and response headers
    def api_public_v1_org_routing_keys_get_with_http_info(x_vo_api_id, x_vo_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RoutingKeysApi.api_public_v1_org_routing_keys_get ...'
      end
      # verify the required parameter 'x_vo_api_id' is set
      if @api_client.config.client_side_validation && x_vo_api_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_id' when calling RoutingKeysApi.api_public_v1_org_routing_keys_get"
      end
      # verify the required parameter 'x_vo_api_key' is set
      if @api_client.config.client_side_validation && x_vo_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_key' when calling RoutingKeysApi.api_public_v1_org_routing_keys_get"
      end
      # resource path
      local_var_path = '/api-public/v1/org/routing-keys'

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
        :return_type => 'ListRoutingKeysResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RoutingKeysApi#api_public_v1_org_routing_keys_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new routing key
    # Creates a new routing key with escalation policy mapping. The targets array is a list of escalation policy policySlugs that the new routing key will target. This API may be called a maximum of 2 times per second.
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [CreateRoutingKeyResponse]
    def api_public_v1_org_routing_keys_post(x_vo_api_id, x_vo_api_key, body, opts = {})
      data, _status_code, _headers = api_public_v1_org_routing_keys_post_with_http_info(x_vo_api_id, x_vo_api_key, body, opts)
      data
    end

    # Create a new routing key
    # Creates a new routing key with escalation policy mapping. The targets array is a list of escalation policy policySlugs that the new routing key will target. This API may be called a maximum of 2 times per second.
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateRoutingKeyResponse, Fixnum, Hash)>] CreateRoutingKeyResponse data, response status code and response headers
    def api_public_v1_org_routing_keys_post_with_http_info(x_vo_api_id, x_vo_api_key, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RoutingKeysApi.api_public_v1_org_routing_keys_post ...'
      end
      # verify the required parameter 'x_vo_api_id' is set
      if @api_client.config.client_side_validation && x_vo_api_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_id' when calling RoutingKeysApi.api_public_v1_org_routing_keys_post"
      end
      # verify the required parameter 'x_vo_api_key' is set
      if @api_client.config.client_side_validation && x_vo_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_key' when calling RoutingKeysApi.api_public_v1_org_routing_keys_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RoutingKeysApi.api_public_v1_org_routing_keys_post"
      end
      # resource path
      local_var_path = '/api-public/v1/org/routing-keys'

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
        :return_type => 'CreateRoutingKeyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RoutingKeysApi#api_public_v1_org_routing_keys_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
