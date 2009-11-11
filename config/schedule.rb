set :cron_log, RAILS_ROOT + "/log/cron_log.log"

every 1.hour do
  rake "db:dumpimport"
  command "rm -r #{RAILS_ROOT}/public/images/assets/* && cp -r #{RAILS_ROOT}/../../shared/employees-images/* #{RAILS_ROOT}/public/images/assets"
end
