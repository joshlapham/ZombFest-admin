class AddDateToFutureEvents < ActiveRecord::Migration

  def up
  	add_column :future_events, :date, :string
  end

  def down
  	remove_column :future_events, :date
  end

end
