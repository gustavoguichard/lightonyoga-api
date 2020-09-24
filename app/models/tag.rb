# frozen_string_literal: true

class Tag < ApplicationRecord
  include Slugable

  has_rich_text :content

  enum category: { level: 1, prop: 2, health: 3, study: 4 }

  # has_many asanas, through: :taggins
  # has_many variations, through: :taggins
  # has_many sequences, through: :taggins


  # TAGGIN
  # belongs_to :tag
  # belongs_to :taggable, polymorphic: true
end
