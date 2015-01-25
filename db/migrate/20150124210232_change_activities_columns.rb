class ChangeActivitiesColumns < ActiveRecord::Migration
  def change
  	remove_column :activities, :active_description
  	remove_column :activities, :receptive_description
  	add_column :activities, :active_question, :text
  	add_column :activities, :receptive_question, :text
  end
end
