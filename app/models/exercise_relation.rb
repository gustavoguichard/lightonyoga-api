# frozen_string_literal: true

class ExerciseRelation < ApplicationRecord
  enum category: { alternative: 0, preparation: 1, connected: 2, compensation: 3 }

  belongs_to :relatable, class_name: 'Exercise'
  belongs_to :related, class_name: 'Exercise'
end
