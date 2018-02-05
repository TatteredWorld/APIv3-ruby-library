=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  | 

OpenAPI spec version: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SibApiV3Sdk
  class AttributesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Creates contact attribute
    # 
    # @param attribute_category Category of the attribute
    # @param attribute_name Name of the attribute
    # @param create_attribute Values to create an attribute
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_attribute(attribute_category, attribute_name, create_attribute, opts = {})
      create_attribute_with_http_info(attribute_category, attribute_name, create_attribute, opts)
      return nil
    end

    # Creates contact attribute
    # 
    # @param attribute_category Category of the attribute
    # @param attribute_name Name of the attribute
    # @param create_attribute Values to create an attribute
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_attribute_with_http_info(attribute_category, attribute_name, create_attribute, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AttributesApi.create_attribute ..."
      end
      # verify the required parameter 'attribute_category' is set
      if @api_client.config.client_side_validation && attribute_category.nil?
        fail ArgumentError, "Missing the required parameter 'attribute_category' when calling AttributesApi.create_attribute"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['normal', 'transactional', 'category', 'calculated', 'global'].include?(attribute_category)
        fail ArgumentError, "invalid value for 'attribute_category', must be one of normal, transactional, category, calculated, global"
      end
      # verify the required parameter 'attribute_name' is set
      if @api_client.config.client_side_validation && attribute_name.nil?
        fail ArgumentError, "Missing the required parameter 'attribute_name' when calling AttributesApi.create_attribute"
      end
      # verify the required parameter 'create_attribute' is set
      if @api_client.config.client_side_validation && create_attribute.nil?
        fail ArgumentError, "Missing the required parameter 'create_attribute' when calling AttributesApi.create_attribute"
      end
      # resource path
      local_var_path = "/contacts/attributes/{attributeCategory}/{attributeName}".sub('{' + 'attributeCategory' + '}', attribute_category.to_s).sub('{' + 'attributeName' + '}', attribute_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(create_attribute)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttributesApi#create_attribute\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes an attribute
    # 
    # @param attribute_category Category of the attribute
    # @param attribute_name Name of the existing attribute
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_attribute(attribute_category, attribute_name, opts = {})
      delete_attribute_with_http_info(attribute_category, attribute_name, opts)
      return nil
    end

    # Deletes an attribute
    # 
    # @param attribute_category Category of the attribute
    # @param attribute_name Name of the existing attribute
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_attribute_with_http_info(attribute_category, attribute_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AttributesApi.delete_attribute ..."
      end
      # verify the required parameter 'attribute_category' is set
      if @api_client.config.client_side_validation && attribute_category.nil?
        fail ArgumentError, "Missing the required parameter 'attribute_category' when calling AttributesApi.delete_attribute"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['normal', 'transactional', 'category', 'calculated', 'global'].include?(attribute_category)
        fail ArgumentError, "invalid value for 'attribute_category', must be one of normal, transactional, category, calculated, global"
      end
      # verify the required parameter 'attribute_name' is set
      if @api_client.config.client_side_validation && attribute_name.nil?
        fail ArgumentError, "Missing the required parameter 'attribute_name' when calling AttributesApi.delete_attribute"
      end
      # resource path
      local_var_path = "/contacts/attributes/{attributeCategory}/{attributeName}".sub('{' + 'attributeCategory' + '}', attribute_category.to_s).sub('{' + 'attributeName' + '}', attribute_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttributesApi#delete_attribute\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lists all attributes
    # 
    # @param [Hash] opts the optional parameters
    # @return [GetAttributes]
    def get_attributes(opts = {})
      data, _status_code, _headers = get_attributes_with_http_info(opts)
      return data
    end

    # Lists all attributes
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetAttributes, Fixnum, Hash)>] GetAttributes data, response status code and response headers
    def get_attributes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AttributesApi.get_attributes ..."
      end
      # resource path
      local_var_path = "/contacts/attributes"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetAttributes')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttributesApi#get_attributes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates contact attribute
    # 
    # @param attribute_category Category of the attribute
    # @param attribute_name Name of the existing attribute
    # @param update_attribute Values to update an attribute
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_attribute(attribute_category, attribute_name, update_attribute, opts = {})
      update_attribute_with_http_info(attribute_category, attribute_name, update_attribute, opts)
      return nil
    end

    # Updates contact attribute
    # 
    # @param attribute_category Category of the attribute
    # @param attribute_name Name of the existing attribute
    # @param update_attribute Values to update an attribute
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_attribute_with_http_info(attribute_category, attribute_name, update_attribute, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AttributesApi.update_attribute ..."
      end
      # verify the required parameter 'attribute_category' is set
      if @api_client.config.client_side_validation && attribute_category.nil?
        fail ArgumentError, "Missing the required parameter 'attribute_category' when calling AttributesApi.update_attribute"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['category', 'calculated', 'global'].include?(attribute_category)
        fail ArgumentError, "invalid value for 'attribute_category', must be one of category, calculated, global"
      end
      # verify the required parameter 'attribute_name' is set
      if @api_client.config.client_side_validation && attribute_name.nil?
        fail ArgumentError, "Missing the required parameter 'attribute_name' when calling AttributesApi.update_attribute"
      end
      # verify the required parameter 'update_attribute' is set
      if @api_client.config.client_side_validation && update_attribute.nil?
        fail ArgumentError, "Missing the required parameter 'update_attribute' when calling AttributesApi.update_attribute"
      end
      # resource path
      local_var_path = "/contacts/attributes/{attributeCategory}/{attributeName}".sub('{' + 'attributeCategory' + '}', attribute_category.to_s).sub('{' + 'attributeName' + '}', attribute_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(update_attribute)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttributesApi#update_attribute\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
