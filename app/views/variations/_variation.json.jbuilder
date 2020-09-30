json.extract! variation, :id, :name, :image, :tagline, :updated_at, :slug, :tag_ids
json.asana do
  json.extract! variation.asana, :id, :name, :image, :slug
end
json.url variation_url(variation, format: :json)
