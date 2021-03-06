=begin
#VictorOps API

#This API allows you to interact with the VictorOps platform in various ways. Your account may be limited to a total number of API calls per month. Also, some of these API calls have rate limits.  https protocol is required to use this API.  NOTE: In this documentation when creating a sample curl request (clicking the TRY IT OUT! button), in some API viewing interfaces, the '@' in an email address may be encoded. Please note that the REST endpoints will not process the encoded version. Make sure that the encoded character '%40' is changed to its unencoded form before submitting the curl request. 

OpenAPI spec version: 0.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'spec_helper'
require 'json'

# Unit tests for VictorOpsClient::MaintenanceModeApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MaintenanceModeApi' do
  before do
    # run before each test
    @instance = VictorOpsClient::MaintenanceModeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MaintenanceModeApi' do
    it 'should create an instance of MaintenanceModeApi' do
      expect(@instance).to be_instance_of(VictorOpsClient::MaintenanceModeApi)
    end
  end

  # unit tests for api_public_v1_maintenancemode_get
  # Get an organization&#39;s current maintenance mode state
  # @param x_vo_api_id Your API ID
  # @param x_vo_api_key Your API Key
  # @param [Hash] opts the optional parameters
  # @return [MaintenanceModeState]
  describe 'api_public_v1_maintenancemode_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for api_public_v1_maintenancemode_maintenancemodeid_end_put
  # End maintenance mode for routing keys
  # @param x_vo_api_id Your API ID
  # @param x_vo_api_key Your API Key
  # @param maintenancemodeid The id of the maintenance mode found in the active maintenance mode object
  # @param [Hash] opts the optional parameters
  # @return [MaintenanceModeState]
  describe 'api_public_v1_maintenancemode_maintenancemodeid_end_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for api_public_v1_maintenancemode_start_post
  # Start maintenance mode for routing keys
  # @param x_vo_api_id Your API ID
  # @param x_vo_api_key Your API Key
  # @param body the definition of the maintenance mode you want to start
  # @param [Hash] opts the optional parameters
  # @return [MaintenanceModeState]
  describe 'api_public_v1_maintenancemode_start_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
