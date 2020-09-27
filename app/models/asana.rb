# frozen_string_literal: true

class Asana < ApplicationRecord
  include Taggable
  include Exercisable

  belongs_to :family

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
end
