# frozen_string_literal: true

class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string :name, null: false, unique: true
      t.string :slug, null: false, unique: true
      t.column :category, :integer, null: false
      t.boolean :premium, null: false, default: false

      t.timestamps
    end
  end
end
