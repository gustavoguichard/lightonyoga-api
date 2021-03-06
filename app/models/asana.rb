# frozen_string_literal: true

class Asana < ApplicationRecord
  include Exercisable
  include Slugable
  include Taggable

  belongs_to :family

  has_many :variations, dependent: :destroy
  has_and_belongs_to_many :movements
  has_and_belongs_to_many :words

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
