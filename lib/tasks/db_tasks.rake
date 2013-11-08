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
    user = User.where("email = ?", "fiji@example.com").limit(1).first

    Time.use_zone(user.time_zone) do
      (-5..5).each do |index|
        start_at = Time.zone.now + index.days
        end_at = start_at + 6.hours

        Event.create!({
          event_name: "Event [#{index}]",
          organizer: user,
          time_zone: user.time_zone,
          start_at: start_at,
          end_at: end_at,
          created_at: start_at
        })
      end
    end
  end
end