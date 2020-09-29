class AddAlternativeNamesToExercises < ActiveRecord::Migration[6.0]
  def change
    add_column :exercises, :alternative_names, :string
  end
end
