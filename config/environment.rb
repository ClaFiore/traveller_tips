require 'bundler/setup'
Bundler.require

configure :development do 
    set :database, 'sqlite3:db/database.db'
end

ActiveRecord::Base.establish_connection(
    adapter => 'sqlite3'
    database => "db/development.sqlite")
ActiveRecord::Base.logger = Logger.new(STDOUT)

require_all 'app'
