# frozen_string_literal: true

class CreateMovements < ActiveRecord::Migration[6.0]
  def change
    create_table :movements do |t|
      t.string :name, null: false, unique: true
      t.string :slug, null: false, unique: true
      t.string :joint, null: false

      t.timestamps
    end
  end
end
