class RemoveFieldsFromOrders < ActiveRecord::Migration
  def self.up
    change_table :orders do |t|
      t.remove :employee, :address, :job_title, :order_number
    end
  end

  def self.down
    change_table :orders do |t|
      t.text :address
      t.string :employee, :order_number, :job_title
    end
  end
end
