class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :verbiage
      t.boolean :active
      t.boolean :receptive
      t.string :type
      t.references :activity, index: true

      t.timestamps null: false
    end
    add_foreign_key :questions, :activities
  end
end
