=begin
#VictorOps API

#This API allows you to interact with the VictorOps platform in various ways. Your account may be limited to a total number of API calls per month. Also, some of these API calls have rate limits.  https protocol is required to use this API.  NOTE: In this documentation when creating a sample curl request (clicking the TRY IT OUT! button), in some API viewing interfaces, the '@' in an email address may be encoded. Please note that the REST endpoints will not process the encoded version. Make sure that the encoded character '%40' is changed to its unencoded form before submitting the curl request. 

OpenAPI spec version: 0.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'spec_helper'
require 'json'

# Unit tests for VictorOpsClient::NotesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'NotesApi' do
  before do
    # run before each test
    @instance = VictorOpsClient::NotesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NotesApi' do
    it 'should create an instance of NotesApi' do
      expect(@instance).to be_instance_of(VictorOpsClient::NotesApi)
    end
  end

  # unit tests for api_public_v1_incidents_incident_number_notes_get
  # Get the notes associated with an incident
  # Get notes any associated with a single incident with the provided incident number.  This API may be called a maximum of 2 times per second. 
  # @param x_vo_api_id Your API ID
  # @param x_vo_api_key Your API Key
  # @param incident_number The incident number
  # @param [Hash] opts the optional parameters
  # @return [Notes]
  describe 'api_public_v1_incidents_incident_number_notes_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for api_public_v1_incidents_incident_number_notes_note_name_delete
  # Delete a Note
  # Delete a note.  This API may be called a maximum of 2 times per second. 
  # @param x_vo_api_id Your API ID
  # @param x_vo_api_key Your API Key
  # @param incident_number The incident number
  # @param note_name The html encoded name field of the note
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'api_public_v1_incidents_incident_number_notes_note_name_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for api_public_v1_incidents_incident_number_notes_note_name_put
  # Update a Note
  # Update a note.  This API may be called a maximum of 2 times per second. 
  # @param x_vo_api_id Your API ID
  # @param x_vo_api_key Your API Key
  # @param body 
  # @param incident_number The incident number
  # @param note_name The html encoded name field of the note
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'api_public_v1_incidents_incident_number_notes_note_name_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for api_public_v1_incidents_incident_number_notes_post
  # Create a new Note
  # Create a new note.  This API may be called a maximum of 2 times per second. 
  # @param x_vo_api_id Your API ID
  # @param x_vo_api_key Your API Key
  # @param body 
  # @param incident_number The incident number
  # @param [Hash] opts the optional parameters
  # @return [Notes]
  describe 'api_public_v1_incidents_incident_number_notes_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
