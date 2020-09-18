# frozen_string_literal: true

class Family < ApplicationRecord
  include Slugable

  has_rich_text :content
end
