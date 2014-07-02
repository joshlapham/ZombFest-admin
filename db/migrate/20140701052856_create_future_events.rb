class CreateFutureEvents < ActiveRecord::Migration

  def up
    create_table :future_events do |t|
      t.string :year
      t.string :image_url
      t.string :content
      t.timestamps
    end
  end

  def down
    drop_table :future_events
  end

end
