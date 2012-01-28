class AddSuperuserToAdminUsers < ActiveRecord::Migration
  def self.up
    change_table :admin_users do |t|
      t.boolean :superuser, :default => false
    end
  end

  def self.down
    change_table :admin_users do |t|
      t.remove :superuser
    end
  end
end
