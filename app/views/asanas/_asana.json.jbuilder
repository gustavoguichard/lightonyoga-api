# frozen_string_literal: true

json.extract! asana, :id, :name, :slug, :translation, :image
json.slug asana.to_param
json.url asana_url(asana, format: :json)
