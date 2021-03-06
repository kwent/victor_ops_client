=begin
#VictorOps API

#This API allows you to interact with the VictorOps platform in various ways. Your account may be limited to a total number of API calls per month. Also, some of these API calls have rate limits.  https protocol is required to use this API.  NOTE: In this documentation when creating a sample curl request (clicking the TRY IT OUT! button), in some API viewing interfaces, the '@' in an email address may be encoded. Please note that the REST endpoints will not process the encoded version. Make sure that the encoded character '%40' is changed to its unencoded form before submitting the curl request. 

OpenAPI spec version: 0.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module VictorOpsClient
  class ReportingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # A list of shift changes for a team
    # Returns a log of user shift changes for the specified team. This is historical data, and may be up to 15 minutes behind real-time log data.  This API may be called a maximum of 2 times per second. 
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param team The VictorOps team &#39;slug&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :start Return shift changes occurring after this timestamp. The default is the start of the day at midnight. Specify the timestamp in ISO8601 format
    # @option opts [DateTime] :_end Return shift changes occurring before this timestamp. The default is the end of the day at 11:59:59. Specify the timestamp in ISO8601 format
    # @option opts [String] :user_name The VictorOps user ID. Return shift changes occurring during the interval specified for this user. Without this parameter, all relevant users (with respect to the specified interval) are returned
    # @return [OnCallLog]
    def api_reporting_v1_team_team_oncall_log_get(x_vo_api_id, x_vo_api_key, team, opts = {})
      data, _status_code, _headers = api_reporting_v1_team_team_oncall_log_get_with_http_info(x_vo_api_id, x_vo_api_key, team, opts)
      data
    end

    # A list of shift changes for a team
    # Returns a log of user shift changes for the specified team. This is historical data, and may be up to 15 minutes behind real-time log data.  This API may be called a maximum of 2 times per second. 
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param team The VictorOps team &#39;slug&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :start Return shift changes occurring after this timestamp. The default is the start of the day at midnight. Specify the timestamp in ISO8601 format
    # @option opts [DateTime] :_end Return shift changes occurring before this timestamp. The default is the end of the day at 11:59:59. Specify the timestamp in ISO8601 format
    # @option opts [String] :user_name The VictorOps user ID. Return shift changes occurring during the interval specified for this user. Without this parameter, all relevant users (with respect to the specified interval) are returned
    # @return [Array<(OnCallLog, Fixnum, Hash)>] OnCallLog data, response status code and response headers
    def api_reporting_v1_team_team_oncall_log_get_with_http_info(x_vo_api_id, x_vo_api_key, team, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportingApi.api_reporting_v1_team_team_oncall_log_get ...'
      end
      # verify the required parameter 'x_vo_api_id' is set
      if @api_client.config.client_side_validation && x_vo_api_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_id' when calling ReportingApi.api_reporting_v1_team_team_oncall_log_get"
      end
      # verify the required parameter 'x_vo_api_key' is set
      if @api_client.config.client_side_validation && x_vo_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_key' when calling ReportingApi.api_reporting_v1_team_team_oncall_log_get"
      end
      # verify the required parameter 'team' is set
      if @api_client.config.client_side_validation && team.nil?
        fail ArgumentError, "Missing the required parameter 'team' when calling ReportingApi.api_reporting_v1_team_team_oncall_log_get"
      end
      # resource path
      local_var_path = '/api-reporting/v1/team/{team}/oncall/log'.sub('{' + 'team' + '}', team.to_s)

      # query parameters
      query_params = {}
      query_params[:'start'] = opts[:'start'] if !opts[:'start'].nil?
      query_params[:'end'] = opts[:'_end'] if !opts[:'_end'].nil?
      query_params[:'userName'] = opts[:'user_name'] if !opts[:'user_name'].nil?

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
        :return_type => 'OnCallLog')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportingApi#api_reporting_v1_team_team_oncall_log_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get/search incident history
    # Retrieve incident history for your company, searching over date ranges and with filtering options.  This API may be called a maximum of once a minute.  Incident requests are paginated with a offset and limit query string parameters.   The query for incidents is run and offset records are skipped, after which limit records will be returned.  The default offset is 0 and the default limit is 20. The maximum value allowed for limit is 100.  Unless specified otherwise with the parameter currentPhase, the response will only contain resolved incidents.  On return, the total number of records available for that query will be returned in the payload as 'total'. 
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :offset The offset within the set of matching incidents (default to 0)
    # @option opts [Float] :limit The maximum number of matching incidents to return (100 max) (default to 20)
    # @option opts [String] :entity_id The entity ID involved  This is the unique identifier for the entity causing the incident.
    # @option opts [String] :incident_number The incident number as shown in VictorOps Multiple values and ranges are allowed: 4,5,20:50 
    # @option opts [String] :started_after Return incidents started after this timestamp Specify the timestamp in ISO8601 format
    # @option opts [String] :started_before Find incidents started before this timestamp  Specify the timestamp in ISO8601 format
    # @option opts [String] :host The host involved in the incident Multiple values can be separated with commas.
    # @option opts [String] :service The service involved in the incident (if any) Multiple values can be separated with commas.
    # @option opts [String] :current_phase The current phase of the incident \&quot;resolved\&quot;, \&quot;triggered\&quot; or \&quot;acknowledged\&quot;. Multiple values can be separated with commas. By default, response contains only \&quot;resolved\&quot; incidents
    # @option opts [String] :routing_key The original routing of the incident
    # @return [ReportingIncidentList]
    def api_reporting_v2_incidents_get(x_vo_api_id, x_vo_api_key, opts = {})
      data, _status_code, _headers = api_reporting_v2_incidents_get_with_http_info(x_vo_api_id, x_vo_api_key, opts)
      data
    end

    # Get/search incident history
    # Retrieve incident history for your company, searching over date ranges and with filtering options.  This API may be called a maximum of once a minute.  Incident requests are paginated with a offset and limit query string parameters.   The query for incidents is run and offset records are skipped, after which limit records will be returned.  The default offset is 0 and the default limit is 20. The maximum value allowed for limit is 100.  Unless specified otherwise with the parameter currentPhase, the response will only contain resolved incidents.  On return, the total number of records available for that query will be returned in the payload as &#39;total&#39;. 
    # @param x_vo_api_id Your API ID
    # @param x_vo_api_key Your API Key
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :offset The offset within the set of matching incidents
    # @option opts [Float] :limit The maximum number of matching incidents to return (100 max)
    # @option opts [String] :entity_id The entity ID involved  This is the unique identifier for the entity causing the incident.
    # @option opts [String] :incident_number The incident number as shown in VictorOps Multiple values and ranges are allowed: 4,5,20:50 
    # @option opts [String] :started_after Return incidents started after this timestamp Specify the timestamp in ISO8601 format
    # @option opts [String] :started_before Find incidents started before this timestamp  Specify the timestamp in ISO8601 format
    # @option opts [String] :host The host involved in the incident Multiple values can be separated with commas.
    # @option opts [String] :service The service involved in the incident (if any) Multiple values can be separated with commas.
    # @option opts [String] :current_phase The current phase of the incident \&quot;resolved\&quot;, \&quot;triggered\&quot; or \&quot;acknowledged\&quot;. Multiple values can be separated with commas. By default, response contains only \&quot;resolved\&quot; incidents
    # @option opts [String] :routing_key The original routing of the incident
    # @return [Array<(ReportingIncidentList, Fixnum, Hash)>] ReportingIncidentList data, response status code and response headers
    def api_reporting_v2_incidents_get_with_http_info(x_vo_api_id, x_vo_api_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportingApi.api_reporting_v2_incidents_get ...'
      end
      # verify the required parameter 'x_vo_api_id' is set
      if @api_client.config.client_side_validation && x_vo_api_id.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_id' when calling ReportingApi.api_reporting_v2_incidents_get"
      end
      # verify the required parameter 'x_vo_api_key' is set
      if @api_client.config.client_side_validation && x_vo_api_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_vo_api_key' when calling ReportingApi.api_reporting_v2_incidents_get"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ReportingApi.api_reporting_v2_incidents_get, must be smaller than or equal to 100.'
      end

      # resource path
      local_var_path = '/api-reporting/v2/incidents'

      # query parameters
      query_params = {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'entityId'] = opts[:'entity_id'] if !opts[:'entity_id'].nil?
      query_params[:'incidentNumber'] = opts[:'incident_number'] if !opts[:'incident_number'].nil?
      query_params[:'startedAfter'] = opts[:'started_after'] if !opts[:'started_after'].nil?
      query_params[:'startedBefore'] = opts[:'started_before'] if !opts[:'started_before'].nil?
      query_params[:'host'] = opts[:'host'] if !opts[:'host'].nil?
      query_params[:'service'] = opts[:'service'] if !opts[:'service'].nil?
      query_params[:'currentPhase'] = opts[:'current_phase'] if !opts[:'current_phase'].nil?
      query_params[:'routingKey'] = opts[:'routing_key'] if !opts[:'routing_key'].nil?

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
        :return_type => 'ReportingIncidentList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportingApi#api_reporting_v2_incidents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
