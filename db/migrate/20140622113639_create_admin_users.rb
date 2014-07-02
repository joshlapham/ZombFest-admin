class CreateAdminUsers < ActiveRecord::Migration

  def up
    create_table :admin_users do |t|
      t.string "email", :default => "", :null => false
      t.string "password_digest", :limit => 40
      t.boolean "is_god", :default => false
      t.timestamps
    end
  end

  def down
    drop_table :admin_users
  end
  
end
