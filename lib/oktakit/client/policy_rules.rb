module Oktakit
  class Client
    module PolicyRules
      # List Policy Rules
      #
      # @param policy_id [string] Policy ID
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Array<Sawyer::Resource>] Array of Policy Rules
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Policy/#tag/Policy/operation/listPolicyRules
      # @example
      #   Oktakit.list_policy_rules('policy_id')
      def list_policy_rules(policy_id, options = {})
        get("/policies/#{policy_id}/rules", options)
      end

      # Create Policy Rule
      #
      # @param policy_id [string] Policy ID
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Sawyer::Resource] The created Policy Rule
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Policy/#tag/Policy/operation/createPolicyRule
      # @example
      #   Oktakit.add_policy_rule('policy_id', {})
      def add_policy_rule(policy_id, options = {})
        post("/policies/#{policy_id}/rules", options)
      end

      # Get Policy Rule
      #
      # @param policy_id [string] Policy ID
      # @param rule_id [string] Rule ID
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Sawyer::Resource] Policy Rule
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Policy/#tag/Policy/operation/getPolicyRule
      # @example
      #   Oktakit.get_policy_rule('policy_id', 'rule_id', {})
      def get_policy_rule(policy_id, rule_id, options = {})
        get("/policies/#{policy_id}/rules/#{rule_id}", options)
      end

      # Update Policy Rule
      #
      # @param policy_id [string] Policy ID
      # @param rule_id [string] Rule ID
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Sawyer::Resource] Updated policy rule
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Policy/#tag/Policy/operation/replacePolicyRule
      # @example
      #   Oktakit.update_policy_rule('policy_id', 'rule_id', {})
      def update_policy_rule(policy_id, rule_id, options = {})
        put("/policies/#{policy_id}/rules/#{rule_id}", options)
      end

      # Delete a Policy Rule
      #
      # @param policy_id [string] Policy ID
      # @param rule_id [string] Rule ID
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return 204 No content
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Policy/#tag/Policy/operation/deletePolicyRule
      # @example
      #   Oktakit.delete_policy_rule('policy_id', 'rule_id', {})
      def delete_policy_rule(policy_id, rule_id, options = {})
        delete("/policies/#{policy_id}/rules/#{rule_id}", options)
      end

    end
  end
end
