redis: leader --unless-port-in-use 6379 redis-server
sidekiq: bundle exec sidekiq
rails: bundle exec rails s Puma -p $PORT
log: tail -f log/development.log
