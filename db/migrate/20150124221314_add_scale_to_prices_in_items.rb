class AddScaleToPricesInItems < ActiveRecord::Migration
  def change
  	remove_column :items, :price
  	remove_column :items, :shipping_fee
  	add_column :items, :price, :decimal, precision: 12, scale: 2
  	add_column :items, :shipping_fee, :decimal, precision: 12, scale: 2
  end
end
