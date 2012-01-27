class AddDepotAndAddressFieldsToUser < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.integer :depot_number
      t.string :depot_name, :address1, :address2, :address3, :address4, :postcode
    end
  end

  def self.down
    change_table :users do |t|
      t.remove :depot_number, :depot_name, :address1, :address2, :address3, :address4, :postcode
    end
  end
end
