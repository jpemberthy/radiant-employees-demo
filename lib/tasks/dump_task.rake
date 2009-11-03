config = Rails::Configuration.new
database = config.database_configuration[RAILS_ENV]["database"]
username = config.database_configuration[RAILS_ENV]["username"]
password = config.database_configuration[RAILS_ENV]["password"]

namespace :db do
  
  #rake db:dump
  desc "dumps the database to a sql file"
  task :dump => :environment do
    puts "Creating #{database}_dump.sql file."
    `sqlite3 #{database} .dump > #{database}.sql`
  end

  #rake db:dumpimport - Resets the DB.
  desc "imports the #{database}_dump.sql file to the current db"
  task :dumpimport => [:environment, :reset] do
    `sqlite3 #{database} < #{database}.sql`
  end

end
