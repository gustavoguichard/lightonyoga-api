class Variation < ApplicationRecord
  include Exercisable
  include Slugable
  include Taggable

  belongs_to :asana

  has_rich_text :content

  def asana_name
    asana.name
  end

  def asana_slug
    asana.slug
  end
end
