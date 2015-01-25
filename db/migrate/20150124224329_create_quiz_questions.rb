class CreateQuizQuestions < ActiveRecord::Migration
  def change
    create_table :quiz_questions do |t|
      t.references :quiz, index: true
      t.references :activity, index: true

      t.timestamps null: false
    end
    add_foreign_key :quiz_questions, :quizzes
    add_foreign_key :quiz_questions, :activities
  end
end
