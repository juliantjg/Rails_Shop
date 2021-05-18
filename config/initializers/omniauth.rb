Rails.application.config.middleware.user Omniauth::Builder do
    provider :twitter, Rails.application.credentials.dig(:twitter, api_key), Rails.application.credentials.dig(:twitter, api_secret)
end