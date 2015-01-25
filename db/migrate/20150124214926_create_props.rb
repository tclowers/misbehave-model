class CreateProps < ActiveRecord::Migration
  def change
    create_table :props do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
