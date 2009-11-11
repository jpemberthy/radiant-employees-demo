set :cron_log, RAILS_ROOT + "/log/cron_log.log"

every 1.hour do
  rake "db:dumpimport"
end

