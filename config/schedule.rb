# Cron jobs for the whenever gem

every 10.minutes do
  runner "Services::FetchData.fetch"
end
