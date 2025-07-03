module Oktakit
  class Client
    module Authenticators
      # Retrieve the well-known app authenticator configuration
      #
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Array<Sawyer::Resource>] Array of Authenticators
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Authenticator/#tag/Authenticator/operation/getWellKnownAppAuthenticatorConfiguration
      # @example
      #   Oktakit.retrieve_well_known_app_authenticator_configuration
      def retrieve_well_known_app_authenticator_configuration(options = {})
        get('/.well-known/app-authenticator-configuration', options)
      end

      # List Authenticators
      #
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Array<Sawyer::Resource>] Array of Authenticators
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Authenticator/#tag/Authenticator/operation/listAuthenticators
      # @example
      #   Oktakit.list_authenticators
      def list_authenticators(options = {})
        get('/authenticators', options)
      end

      # Create Authenticator
      #
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Hash<Sawyer::Resource>] Authenticator
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Authenticator/#tag/Authenticator/operation/createAuthenticator
      # @example
      #   Oktakit.create_authenticator
      def create_authenticator(options = {})
        post('/authenticators', options)
      end

      # Retrieve Authenticator
      #
      # @params id [string] Authenticator ID
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Hash<Sawyer::Resource>] Authenticator
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Authenticator/#tag/Authenticator/operation/getAuthenticator
      # @example
      #   Oktakit.get_authenticator('id')
      def get_authenticator(id, options = {})
        get("/authenticators/#{id}", options)
      end

      # Replace Authenticator
      #
      # @params id [string] Authenticator ID
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Hash<Sawyer::Resource>] Updated Authenticator
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Authenticator/#tag/Authenticator/operation/replaceAuthenticator
      # @example
      #  Oktakit.update_authenticator('id')
      def update_authenticator(id, options = {})
        put("/authenticators/#{id}", options)
      end

      # Activate an Authenticator
      #
      # @params id [string] Authenticator ID
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Hash<Sawyer::Resource>] Activated Authenticator
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Authenticator/#tag/Authenticator/operation/activateAuthenticator
      # @example
      #   Oktakit.activate_authenticator('id')
      def activate_authenticator(id, options = {})
        post("/authenticators/#{id}/lifecycle/activate", options)
      end

      # Deactivate an Authenticator
      #
      # @params id [string] Authenticator ID
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Hash<Sawyer::Resource>] Deactivated Authenticator
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Authenticator/#tag/Authenticator/operation/deactivateAuthenticator
      # @example
      #  Oktakit.deactivate_authenticator('id')
      def deactivate_authenticator(id, options = {})
        post("/authenticators/#{id}/lifecycle/deactivate", options)
      end

      # List All Authenticator Methods
      #
      # @params id [string] Authenticator ID
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Array<Sawyer::Resource>] Array of Authenticator Methods
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Authenticator/#tag/Authenticator/operation/listAuthenticatorMethods
      # @example
      #  Oktakit.list_all_authenticator_methods('id')
      def list_all_authenticator_methods(id, options = {})
        get("/authenticators/#{id}/methods", options)
      end


      # Get an Authenticator Method
      #
      # @params id [string] Authenticator ID
      # @params type [string] Authenticator Type. Enum: "cert" "duo" "email" "idp" "otp" "password" "push" "security_question" "signed_nonce" "sms" "totp" "voice" "webauthn"
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Hash<Sawyer::Resource>] Authenticator Method
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Authenticator/#tag/Authenticator/operation/getAuthenticatorMethod
      # @example
      #  Oktakit.get_authenticator_method('id', 'type')
      def get_authenticator_method(id, type, options = {})
        get("/authenticators/#{id}/methods/#{type}", options)
      end

      # Update an Authenticator Method
      #
      # @params id [string] Authenticator ID
      # @params type [string] Authenticator Type. Enum: "cert" "duo" "email" "idp" "otp" "password" "push" "security_question" "signed_nonce" "sms" "totp" "voice" "webauthn"
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Hash<Sawyer::Resource>] Updated Authenticator Method
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Authenticator/#tag/Authenticator/operation/replaceAuthenticatorMethod
      # @example
      #   Oktakit.update_authenticator_method('id', 'type')
      def update_authenticator_method(id, type, options = {})
        put("/authenticators/#{id}/methods/#{type}", options)
      end


      # Activate an Authenticator Method
      #
      # @params id [string] Authenticator ID
      # @params type [string] Authenticator Type. Enum: "cert" "duo" "email" "idp" "otp" "password" "push" "security_question" "signed_nonce" "sms" "totp" "voice" "webauthn"
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Hash<Sawyer::Resource>] Activated Authenticator Method
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Authenticator/#tag/Authenticator/operation/activateAuthenticatorMethod
      # @example
      #  Oktakit.activate_authenticator_method('id', 'type')
      def activate_authenticator_method(id, type, options = {})
        put("/authenticators/#{id}/methods/#{type}/lifecycle/activate", options)
      end

      # Deactivate an Authenticator Method
      #
      # @params id [string] Authenticator ID
      # @params type [string] Authenticator Type. Enum: "cert" "duo" "email" "idp" "otp" "password" "push" "security_question" "signed_nonce" "sms" "totp" "voice" "webauthn"
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Hash<Sawyer::Resource>] Deactivated Authenticator Method
      # @see https://developer.okta.com/docs/api/openapi/okta-management/management/tag/Authenticator/#tag/Authenticator/operation/deactivateAuthenticatorMethod
      # @example
      #  Oktakit.deactivate_authenticator_method('id', 'type')
      def deactivate_authenticator_method(id, type, options = {})
        put("/authenticators/#{id}/methods/#{type}/lifecycle/deactivate", options)
      end
    end
  end
end