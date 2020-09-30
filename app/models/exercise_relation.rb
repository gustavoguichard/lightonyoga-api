# frozen_string_literal: true

class ExerciseRelation < ApplicationRecord
  enum category: { alternative: 0, preparation: 1, connected: 2, compensation: 3 }

  belongs_to :relatable, class_name: 'Exercise'
  belongs_to :related, class_name: 'Exercise'

  validate :related_and_relatable_cant_be_the_same

  def related_and_relatable_cant_be_the_same
    if relatable.present? && related == relatable
      errors.add(:related, "can't add relations between same exercises")
    end
  end

  def name
    "#{relatable.full_name} -> #{related.full_name}"
  end
end
