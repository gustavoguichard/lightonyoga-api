# frozen_string_literal: true

module Slugable
  extend ActiveSupport::Concern

  included do
    after_validation :set_slug, only: %i[create update]
  end

  def to_param
    slug
  end

  private

  def set_slug
    self.slug = name.to_s.parameterize
  end
end
