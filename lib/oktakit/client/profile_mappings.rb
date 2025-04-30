module Oktakit
  class Client
    module ProfileMappings
      # List ProfileMappings
      #
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Array<Sawyer::Resource>] Array of ProfileMappings
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/ProfileMapping/#tag/ProfileMapping/operation/listProfileMappings
      # @example
      #   Oktakit.list_profile_mappings(query: {type: 'IDP_DISCOVERY'})
      def list_profile_mappings(options = {})
        get("/mappings", options)
      end

      # Retrieve a profile_mapping
      #
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Sawyer::Resource] ProfileMapping
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/ProfileMapping/#tag/ProfileMapping/operation/getProfileMapping
      # @example
      #   Oktakit.get_profile_mapping('id')
      def get_profile_mapping(id, options = {})
        get("/mappings/#{id}", options)
      end

      # Update a profile_mapping
      #
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Sawyer::Resource] The updated ProfileMapping
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/ProfileMapping/#tag/ProfileMapping/operation/replaceProfileMapping
      # @example
      #   Oktakit.update_profile_mapping('id', options)
      def update_profile_mapping(id, options = {})
        post("/mappings/#{id}", options)
      end
    end
  end
end
