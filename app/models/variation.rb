class Variation < ApplicationRecord
  include Taggable

  belongs_to :asana
  has_one :exercise, as: :content, dependent: :destroy

  has_rich_text :content

  delegate :name, to: :exercise
  delegate :slug, to: :exercise

  accepts_nested_attributes_for :exercise

  def asana_name
    asana.name
  end

  def asana_slug
    asana.slug
  end
end
