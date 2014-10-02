class AddIsActiveToFutureEvents < ActiveRecord::Migration

  def up
  	add_column :future_events, :is_active, :boolean
  end

  def down
  	remove_column :future_events, :is_active
  end

end
