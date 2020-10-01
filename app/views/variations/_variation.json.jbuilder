json.extract! variation, :id, :name, :picture, :tagline, :updated_at, :slug, :tag_ids
json.asana do
  json.extract! variation.asana, :id, :name, :picture, :slug
end
json.url variation_url(variation, format: :json)
