# frozen_string_literal: true

class CreateExercises < ActiveRecord::Migration[6.0]
  class Asana < ApplicationRecord; end
  class Exercise < ApplicationRecord
    belongs_to :content, polymorphic: true
  end

  def up
    create_table :exercises do |t|
      t.string :name
      t.string :slug
      t.references :content, polymorphic: true
      t.timestamps
    end

    Asana.find_each do |asana|
      Exercise.create(content_id: asana.id, content_type: 'Asana', name: asana.name, slug: asana.slug)
    end

    change_table(:asanas) do |t|
      t.remove :name
      t.remove :slug
    end
  end

  def down
    change_table(:asanas) do |t|
      t.column :name, :string
      t.column :slug, :string, unique: true
    end

    Exercise.find_each do |exercise|
      next unless exercise.content_type == 'Asana'

      asana = Asana.find(exercise.content_id)
      asana.update(name: exercise.name, slug: exercise.slug)
    end

    Asana.reset_column_information
    change_column_null :asanas, :name, false
    change_column_null :asanas, :slug, false

    drop_table :exercises
  end
end
