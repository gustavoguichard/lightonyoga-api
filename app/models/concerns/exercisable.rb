# frozen_string_literal: true

module Exercisable
  extend ActiveSupport::Concern

  included do
    has_one :exercise, as: :content, dependent: :destroy

    delegate :name, :name=, :alternative_names, :slug, :slug=, :picture, :image, :full_name, to: :exercise

    accepts_nested_attributes_for :exercise
  end

end
