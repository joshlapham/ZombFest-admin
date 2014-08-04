class AddLatAndLongToFutureEventTimes < ActiveRecord::Migration

  def up
    add_column :future_event_times, :lat, :string
    add_column :future_event_times, :long, :string
  end

  def down
    remove_column :future_event_times, :lat
    remove_column :future_event_times, :long
  end

end
