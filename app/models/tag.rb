# frozen_string_literal: true

class Tag < ApplicationRecord
  include Slugable

  has_rich_text :content

  enum category: { level: 1, prop: 2, health: 3, study: 4 }
end
