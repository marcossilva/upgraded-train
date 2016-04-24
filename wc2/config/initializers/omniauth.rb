OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1672051266388415', '2330308108313c55b6caa7cebb88fbe4', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end