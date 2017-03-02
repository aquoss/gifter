task :send_reminder => :environment do
 User.send_reminder
end
