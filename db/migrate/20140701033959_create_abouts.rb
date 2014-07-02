class CreateAbouts < ActiveRecord::Migration

  def up
    create_table :abouts do |t|
      t.string :title
      t.string :content
      t.timestamps
    end
  end

  def down
    drop_table :abouts
  end

end
