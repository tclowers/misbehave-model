class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.text :part_identifier
      t.decimal :price
      t.decimal :shipping_fee

      t.timestamps null: false
    end
  end
end
