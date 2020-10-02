# frozen_string_literal: true

class Exercise < ApplicationRecord
  include Slugable

  has_many :relatable_relations, foreign_key: :related_id, class_name: 'ExerciseRelation', dependent: :destroy
  has_many :relatables, through: :relatable_relations

  has_many :related_relations, foreign_key: :relatable_id, class_name: 'ExerciseRelation', dependent: :destroy
  has_many :relateds, through: :related_relations

  belongs_to :content, polymorphic: true, dependent: :destroy

  has_rich_text :description

  accepts_nested_attributes_for :related_relations

  def picture
    image.present? ? image : 'https://www.linkpicture.com/q/default-asana.png'
  end

  def variation?
    content_type == 'Variation'
  end

  def full_slug
    variation? ? content.to_param : slug
  end

  def full_name
    return name unless variation?

    "#{content.asana.name} - #{name}"
  end

  def parent_slug
    return unless variation?

    content.asana.slug
  end
end
