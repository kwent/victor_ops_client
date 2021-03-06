=begin
#VictorOps API

#This API allows you to interact with the VictorOps platform in various ways. Your account may be limited to a total number of API calls per month. Also, some of these API calls have rate limits.  https protocol is required to use this API.  NOTE: In this documentation when creating a sample curl request (clicking the TRY IT OUT! button), in some API viewing interfaces, the '@' in an email address may be encoded. Please note that the REST endpoints will not process the encoded version. Make sure that the encoded character '%40' is changed to its unencoded form before submitting the curl request. 

OpenAPI spec version: 0.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'spec_helper'
require 'json'

# Unit tests for VictorOpsClient::EscalationPoliciesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EscalationPoliciesApi' do
  before do
    # run before each test
    @instance = VictorOpsClient::EscalationPoliciesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EscalationPoliciesApi' do
    it 'should create an instance of EscalationPoliciesApi' do
      expect(@instance).to be_instance_of(VictorOpsClient::EscalationPoliciesApi)
    end
  end

  # unit tests for api_public_v1_policies_get
  # Get a list of escalation policy info
  # Retrieves a list of all escalation policy summaries and their associated teams that exist in your organization. If the optional &#x60;filter&#x60; query parameter is present, retrieves a list of all escalation policy summaries with a name matching the provided search filter.  This is the recommended way for determining to which team an escalation policy belongs.  This API may be called a maximum of 2 times per second.
  # @param x_vo_api_id Your API ID
  # @param x_vo_api_key Your API Key
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter An escalation policy name to be used for filtering the results. Note: If this parameter is present, it must be at least three (3) characters long
  # @return [EscalationPolicyInfoList]
  describe 'api_public_v1_policies_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for api_public_v1_policies_policy_delete
  # Delete a specified escalation policy
  # Deletes a specific escalaton policy based on the unique policy slug provided in the path.  Any routing keys which ONLY contain this policy will also be deleted.  This API may be called a maximum of 2 times per second.
  # @param x_vo_api_id Your API ID
  # @param x_vo_api_key Your API Key
  # @param policy The uniquely identifying escalation policy slug. The policy slug is in the format &#x60;pol-[\\w\\d]{16}&#x60;
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'api_public_v1_policies_policy_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for api_public_v1_policies_policy_get
  # Get a specific escalation policy
  # Gets a specific escalation policy based on the unique policy slug provided in the path.  The context for which team this policy belongs to is not available at this level. To retrieve information about this escalation policy&#39;s team, you must retrieve all of the policy summaries. The escalation policy summaries include links to this endpoint for each escalation policy.  This API may be called a maximum of 2 times per second.
  # @param x_vo_api_id Your API ID
  # @param x_vo_api_key Your API Key
  # @param policy The uniquely identifying escalation policy slug.  Thus slug is in the format &#x60;pol-[\\w\\d]{16}&#x60;
  # @param [Hash] opts the optional parameters
  # @return [EscalationPolicy]
  describe 'api_public_v1_policies_policy_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for api_public_v1_policies_post
  # Create an escalation policy
  # Takes an entire escalation policy and creates it.  For the purpose of using this API, escalation policies are treated as immutable. The policy will not be able to be updated or modified in any way via this API once created. It will only be able to be deleted. However, The escalation policies are accessable in the UI once created and can be updated from there.  This API may be called a maximum of 2 times per second.
  # @param x_vo_api_id Your API ID
  # @param x_vo_api_key Your API Key
  # @param body The request body needed to create an escalation policy
  # @param [Hash] opts the optional parameters
  # @return [EscalationPolicy]
  describe 'api_public_v1_policies_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for api_public_v1_team_team_policies_get
  # Retrieve a list of escalation policies for a team
  # Please see the Escalation Policies section for retrieving information on escalation policies  Get the escalation policies for the specified team.  This API may be called a maximum of 2 times per second.
  # @param x_vo_api_id Your API ID
  # @param x_vo_api_key Your API Key
  # @param team The VictorOps team to fetch
  # @param [Hash] opts the optional parameters
  # @return [EscalationPolicyInfoList]
  describe 'api_public_v1_team_team_policies_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
