set :cron_log, RAILS_ROOT + "/log/cron_log.log"

every 1.minute do
  command "cd #{RAILS_ROOT} && git push --force heroku master"
  command "cd #{RAILS_ROOT} && heroku db:push"
end

