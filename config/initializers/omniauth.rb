Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, Rails.application.secrets.github_key, Rails.application.secrets.github_secret
end

OmniAuth.config.logger = Rails.logger
