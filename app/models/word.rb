class Word < ApplicationRecord
  include Slugable

  has_and_belongs_to_many :asanas

  validates :name, presence: true
  validates :translation, presence: true
end
