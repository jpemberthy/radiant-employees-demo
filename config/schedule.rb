# set :cron_log, "/path/to/my/cron_log.log"

every 1.hour do
  command "git push heroku master"
  command "heroku db:push"
end

