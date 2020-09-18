# frozen_string_literal: true

class Movement < ApplicationRecord
  include Slugable

  has_rich_text :content
end
