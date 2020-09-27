# frozen_string_literal: true

class Movement < ApplicationRecord
  include Slugable

  has_and_belongs_to_many :asanas

  has_rich_text :content
end
