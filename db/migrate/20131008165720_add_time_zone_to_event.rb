class AddTimeZoneToEvent < ActiveRecord::Migration
  def change
    add_column :events, :time_zone, :string, null: false, default: 'UTC'
  end
end
