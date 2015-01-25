class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.boolean :active
      t.boolean :receptive
      t.references :activity, index: true

      t.timestamps null: false
    end
    add_foreign_key :preferences, :activities
  end
end
