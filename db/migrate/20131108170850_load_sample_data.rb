class LoadSampleData < ActiveRecord::Migration
  def change
    execute(File.read("db/data/inserts_events.sql"))
    execute(File.read("db/data/inserts_work_schedules.sql"))
    execute(File.read("db/data/inserts_users.sql"))
  end
end
