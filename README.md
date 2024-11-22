# Omniauth Klaviyo

OmniAuth strategy for authenticating with [Klaviyo](https://www.klaviyo.com) via OAuth 2.0.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-klaviyo'
```

And then execute:

```ruby
bundle install
```

Or install it yourself with:

```ruby
gem install omniauth-klaviyo
```

## Usage

### Rails Integration

1. Add the following to your `config/initializers/omniauth.rb` file:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :klaviyo, ENV['KLAVIYO_CLIENT_ID'], ENV['KLAVIYO_CLIENT_SECRET'], scope: 'read_accounts'
end
```

2. Set the required environment variables:

+ `KLAVIYO_CLIENT_ID`
+ `KLAVIYO_CLIENT_SECRET`

These can be obtained from your Klaviyo developer account.

3. Add the following route to handle callbacks:

```ruby
get '/auth/:provider/callback', to: 'sessions#create'
```

### OmniAuth Strategy Details

This gem follows the [OmniAuth OAuth2](https://github.com/omniauth/omniauth-oauth2) strategy pattern. It provides the following OmniAuth endpoints:

+ `/auth/klaviyo` - Initiates the OAuth process.
+ `/auth/klaviyo/callback` - Handles the callback from Klaviyo after authorization.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/everywavehq/omniauth-klaviyo. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/everywavehq/omniauth-klaviyo/blob/main/CODE_OF_CONDUCT.md).

## License

Copyright (c) 2024 Morad Boukhari and [Everywave](https://everywave.com).

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
