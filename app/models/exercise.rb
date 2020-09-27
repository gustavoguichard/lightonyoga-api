# frozen_string_literal: true

class Exercise < ApplicationRecord
  include Slugable

  belongs_to :content, polymorphic: true, dependent: :destroy

  has_rich_text :description
end
