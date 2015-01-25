class AddPropQuestionToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :prop_question, :text
  end
end
