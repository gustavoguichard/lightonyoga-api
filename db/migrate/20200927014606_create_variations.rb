class CreateVariations < ActiveRecord::Migration[6.0]
  def change
    create_table :variations do |t|
      t.string :tagline
      t.belongs_to :asana, null: false, foreign_key: true

      t.timestamps
    end
  end
end
