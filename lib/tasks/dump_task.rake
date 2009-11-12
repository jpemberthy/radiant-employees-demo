config = Rails::Configuration.new
database = config.database_configuration[RAILS_ENV]["database"]

namespace :db do
  
  #rake db:dump
  desc "dumps the database to a sql file"
  task :dump => :environment do
    puts "Creating #{database}.sql file."
    `sqlite3 #{database} .dump > #{database}.sql`
  end

  #rake db:dumpimport - Resets the DB.
  desc "imports the #{database}_dump.sql file to the current db"
  task :dumpimport => [:environment, :drop, :create] do
    `sqlite3 #{database} < #{database}.sql`
  end

end

namespace :demo do
  
  #rake demo:restore_images
  desc  "restore the original employees images"
  task :restore_images do
    images_path = "public/images"
    FileUtils.rm_r Dir.glob("#{RAILS_ROOT}/#{images_path}/assets/*")
    FileUtils.cp_r Dir.glob("#{RAILS_ROOT}/#{images_path}/original_employees/*"), "#{RAILS_ROOT}/#{images_path}/assets/"
  end
  
end