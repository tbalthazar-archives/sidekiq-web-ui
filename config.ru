require 'sidekiq'

Sidekiq.configure_client do |config|
  config.redis = { 
    size: 1,
    url: ENV['REDIS_PROVIDER']
  }
end

require 'sidekiq/web'
map '/' do
  use Rack::Auth::Basic, "Protected Area" do |username, password|
    username == ENV['USERNAME'] && password == ENV['PASSWORD']
  end

  run Sidekiq::Web
end
