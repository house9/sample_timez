namespace :db_tasks do
  desc "Rebuild the development database"
  task :rebuild_database, [] => :environment do |task, args|
    puts " BEGIN"
    puts " - Drop database"
    Rake::Task['db:drop'].execute

    puts " - Create database"
    Rake::Task['db:create'].execute

    puts " - Migrate database and load sample data"
    Rake::Task['db:migrate'].execute

    puts " - Load Additional sample data"
    Rake::Task['db_tasks:load_additional_sample_data'].execute

    Rake::Task['db:test:prepare'].execute

    puts " DONE"
  end

  task :load_additional_sample_data, [] => :environment do |task, args|
    User.where("email <> ?", "_pacific_gmt-8@example.com").each do |user|
      Time.use_zone(user.time_zone) do
        24.times.each do |index|
          start_at = Date.current.beginning_of_day + index.hours
          end_at = start_at + 5.hours

          created_at_offset = (index % 2 == 0) ? index.days : index.hours

          Event.create!({
            event_name: "Event [#{index} - #{user.time_zone}]",
            organizer: user,
            time_zone: user.time_zone,
            start_at: start_at,
            end_at: end_at,
            created_at: Time.zone.now.yesterday - created_at_offset
          })
        end
      end
    end

  end
end