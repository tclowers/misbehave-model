class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :active_description
      t.string :receptive_description

      t.timestamps null: false
    end
  end
end
