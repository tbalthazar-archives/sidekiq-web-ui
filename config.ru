require 'sidekiq'

Sidekiq.configure_client do |config|
  config.redis = { :size => 1 }
end

puts "--- hey"

require 'sidekiq/web'
run Sidekiq::Web
