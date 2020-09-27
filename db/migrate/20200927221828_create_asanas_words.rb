class CreateAsanasWords < ActiveRecord::Migration[6.0]
  def change
    create_table :asanas_words do |t|
      t.belongs_to :asana, null: false, foreign_key: true
      t.belongs_to :word, null: false, foreign_key: true
    end
  end
end
