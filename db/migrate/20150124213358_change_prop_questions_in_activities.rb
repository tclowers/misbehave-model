class ChangePropQuestionsInActivities < ActiveRecord::Migration
  def change
  	rename_column :activities, :prop_question, :active_prop_question
  	add_column :activities, :receptive_prop_question, :text
  end
end
