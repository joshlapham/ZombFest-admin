class AddDateToPastEvents < ActiveRecord::Migration

  def up
  	add_column :past_events, :date, :string
  end

  def down
  	remove_column :past_events, :date
  end

end
