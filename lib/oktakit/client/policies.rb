module Oktakit
  class Client
    module Policies
      # List Policies
      #
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Array<Sawyer::Resource>] Array of Policies
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Policy/#tag/Policy/operation/listPolicies
      # @example
      #   Oktakit.list_policies(query: {type: 'IDP_DISCOVERY'})
      def list_policies(options = {})
        get("/policies", options)
      end

      # Create a policy
      #
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Sawyer::Resource] The created Policy
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Policy/#tag/Policy/operation/createPolicy
      # @example
      #   Oktakit.add_policy
      def add_policy(options = {})
        post("/policies", options)
      end

      # Retrieve a policy
      #
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Sawyer::Resource] Policy
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Policy/#tag/Policy/operation/getPolicy
      # @example
      #   Oktakit.get_policy('id')
      def get_policy(id, options = {})
        get("/policies/#{id}", options)
      end

      # Update a policy
      #
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Sawyer::Resource] The updated Policy
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Policy/#tag/Policy/operation/replacePolicy
      # @example
      #   Oktakit.update_policy('id', options)
      def update_policy(id, options = {})
        put("/policies/#{id}", options)
      end

      # Delete a policy
      #
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return 204 No content
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Policy/#tag/Policy/operation/deletePolicy
      # @example
      #   Oktakit.delete_policy('id', options)
      def delete_policy(id, options = {})
        delete("/policies/#{id}", options)
      end

    end
  end
end
