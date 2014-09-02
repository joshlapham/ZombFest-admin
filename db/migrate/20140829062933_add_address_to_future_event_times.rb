class AddAddressToFutureEventTimes < ActiveRecord::Migration

  def up
  	add_column :future_event_times, :address, :string
  	add_column :future_event_times, :city, :string
  	add_column :future_event_times, :state, :string
  	add_column :future_event_times, :postcode, :string
  end

  def down
  	remove_column :future_event_times, :address
  	remove_column :future_event_times, :city
  	remove_column :future_event_times, :state
  	remove_column :future_event_times, :postcode
  end

end
