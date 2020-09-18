# frozen_string_literal: true

class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :name, null: false, unique: true
      t.string :slug, null: false, unique: true
      t.string :translation

      t.timestamps
    end
  end
end
