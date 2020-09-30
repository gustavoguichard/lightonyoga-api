class CreateExerciseRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :exercise_relations do |t|
      t.belongs_to :relatable, null: false, foreign_key: { to_table: :exercises }
      t.belongs_to :related, null: false, foreign_key: { to_table: :exercises }
      t.integer :category, default: 0, null: false
      t.string :comment
    end
  end
end
