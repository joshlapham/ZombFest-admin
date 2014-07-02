class CreateFutureEventTimes < ActiveRecord::Migration

  def up
    create_table :future_event_times do |t|
      t.string :location_name
      t.string :start_time
      t.integer :future_event_id
      t.timestamps
    end
  end

  def down
    drop_table :future_event_times
  end

end
