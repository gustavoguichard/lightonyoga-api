class Variation < ApplicationRecord
  include Exercisable
  include Slugable
  include Taggable

  belongs_to :asana

  has_rich_text :content
end
