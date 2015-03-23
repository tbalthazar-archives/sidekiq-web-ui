require 'sidekiq'

Sidekiq.configure_client do |config|
  config.redis = { 
    size: 1,
    url: ENV['REDIS_PROVIDER']
  }
end

# require 'sidekiq/web'
# run Sidekiq::Web



require 'sidekiq/web'
map '/sidekiq' do
  use Rack::Auth::Basic, "Protected Area" do |username, password|
    username == 'sidekiq' && password == 'sidekiq'
  end

  run Sidekiq::Web
end
