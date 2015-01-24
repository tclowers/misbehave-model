class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :alias
      t.string :email
      t.integer :gender
      t.string :password
      t.string :salt
      t.string :access_pass

      t.timestamps null: false
    end
  end
end
