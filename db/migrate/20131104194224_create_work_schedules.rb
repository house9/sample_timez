class CreateWorkSchedules < ActiveRecord::Migration
  def change
    create_table :work_schedules do |t|
      t.integer :worker_id, null: false
      t.datetime :start_at, null: false
      t.datetime :end_at, null: false
      t.string :time_zone, null: false, default: 'UTC'

      t.timestamps
    end
  end
end
