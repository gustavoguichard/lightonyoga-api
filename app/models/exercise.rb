# frozen_string_literal: true

class Exercise < ApplicationRecord
  include Slugable

  belongs_to :content, polymorphic: true, dependent: :destroy

  # has_many :taggins, as: :taggable
  # has_many :tags, through :taggins

  has_rich_text :description
end
