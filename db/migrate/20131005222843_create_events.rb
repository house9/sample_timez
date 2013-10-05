class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name, null: false
      t.datetime :start_at, null: false
      t.datetime :end_at
      t.text :description
      t.integer :organizer_id, null: false

      t.timestamps
    end
  end
end
