=begin
#VictorOps API

#This API allows you to interact with the VictorOps platform in various ways. Your account may be limited to a total number of API calls per month. Also, some of these API calls have rate limits.  https protocol is required to use this API.  NOTE: In this documentation when creating a sample curl request (clicking the TRY IT OUT! button), in some API viewing interfaces, the '@' in an email address may be encoded. Please note that the REST endpoints will not process the encoded version. Make sure that the encoded character '%40' is changed to its unencoded form before submitting the curl request. 

OpenAPI spec version: 0.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module VictorOpsClient
  class NotificationType
    
    PUSH = 'push'.freeze
    EMAIL = 'email'.freeze
    SMS = 'sms'.freeze
    PHONE = 'phone'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = NotificationType.constants.select { |c| NotificationType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #NotificationType" if constantValues.empty?
      value
    end
  end
end
