# frozen_string_literal: true

class Asana < ApplicationRecord
  include Slugable

  belongs_to :family

  has_one :exercise, as: :content, dependent: :destroy
  has_many :variations, dependent: :destroy

  has_rich_text :content
  has_rich_text :setup
  has_rich_text :entering
  has_rich_text :legs
  has_rich_text :core
  has_rich_text :trunk
  has_rich_text :arms
  has_rich_text :head
  has_rich_text :all
  has_rich_text :leaving
  has_rich_text :curiosities

  delegate :name, to: :exercise
  delegate :slug, to: :exercise

  accepts_nested_attributes_for :exercise
end
