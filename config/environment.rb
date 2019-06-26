ENV['SINATRA_ENV'] ||= "development"

configure :development do
  set :database, 'sqlite3:db/database.db'
end

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'
