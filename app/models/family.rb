# frozen_string_literal: true

class Family < ApplicationRecord
  include Slugable

  has_rich_text :content

  validates :name, presence: true
  validates :translation, presence: true
end
