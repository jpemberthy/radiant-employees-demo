task :cron => :environment do
 if Time.now
   puts "testing cron log"
 end
end