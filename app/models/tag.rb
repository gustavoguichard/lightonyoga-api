# frozen_string_literal: true

class Tag < ApplicationRecord
  include Slugable

  has_rich_text :content

  enum category: { level: 1, prop: 2, health: 3, study: 4 }

  has_many :taggings, dependent: :destroy
  has_many :asanas, through: :taggings, source: :taggable, source_type: 'Asana'
  has_many :variations, through: :taggings, source: :taggable, source_type: 'Variation'

  validates :name, presence: true
  validates :category, presence: true
end
