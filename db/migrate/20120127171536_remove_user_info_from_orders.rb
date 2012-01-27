class RemoveUserInfoFromOrders < ActiveRecord::Migration
  def self.up
    change_table :orders do |t|
      t.remove :branch, :contact
    end
  end

  def self.down
    change_table :orders do |t|
      t.string :branch, :contact
    end
  end
end
