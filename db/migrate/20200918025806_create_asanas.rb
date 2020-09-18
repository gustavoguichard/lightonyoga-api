# frozen_string_literal: true

class CreateAsanas < ActiveRecord::Migration[6.0]
  def change
    create_table :asanas do |t|
      t.string :name, null: false
      t.string :slug, null: false, unique: true
      t.string :translation
      t.belongs_to :family, null: false, foreign_key: true
      t.text :advanced_actions
      t.text :connections
      t.text :observe
      t.text :benefits
      t.text :caution
      t.text :contraindications

      t.timestamps
    end
  end
end
