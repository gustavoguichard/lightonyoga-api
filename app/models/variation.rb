class Variation < ApplicationRecord
  include Taggable
  include Exercisable

  belongs_to :asana

  has_rich_text :content

  def asana_name
    asana.name
  end

  def asana_slug
    asana.slug
  end
end
