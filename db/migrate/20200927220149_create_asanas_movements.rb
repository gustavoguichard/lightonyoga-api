class CreateAsanasMovements < ActiveRecord::Migration[6.0]
  def change
    create_table :asanas_movements do |t|
      t.belongs_to :asana, null: false, foreign_key: true
      t.belongs_to :movement, null: false, foreign_key: true
    end
  end
end
