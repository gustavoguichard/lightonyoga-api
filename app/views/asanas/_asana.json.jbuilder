# frozen_string_literal: true

json.extract! asana, :id, :name, :slug, :translation, :image
json.slug asana.to_param
json.variation_ids asana.variation_ids
json.word_ids asana.word_ids
json.movement_ids asana.movement_ids
json.url asana_url(asana, format: :json)
