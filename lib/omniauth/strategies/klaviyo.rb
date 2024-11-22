# frozen_string_literal: true

require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Klaviyo < OmniAuth::Strategies::OAuth2

      DEFAULT_REVISION = '2024-10-15'

      option :name, 'klaviyo'

      option :pkce, true

      option :client_options, {
        site: 'https://a.klaviyo.com',
        authorize_url: 'https://www.klaviyo.com/oauth/authorize',
        token_url: 'https://a.klaviyo.com/oauth/token'
      }

      def callback_url
        full_host + script_name + callback_path
      end

      uid { raw_info['id'] }

      def raw_info
        response = access_token.get('/api/accounts', :headers => { 'revision' => DEFAULT_REVISION }).parsed
        @raw_info ||= response.dig("data", 0) || {}
      end
    end
  end
end
