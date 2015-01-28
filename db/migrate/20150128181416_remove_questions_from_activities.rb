class RemoveQuestionsFromActivities < ActiveRecord::Migration
  def change
    remove_column :activities, :active_prop_question
  	remove_column :activities, :active_question
  	remove_column :activities, :receptive_question
  	remove_column :activities, :receptive_prop_question
  end
end
