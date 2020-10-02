json.extract! variation, :id, :name, :picture, :tagline, :updated_at, :tag_ids
json.slug variation.to_param
json.asana do
  json.extract! variation.asana, :id, :name, :picture, :slug
end
json.url variation_url(variation, format: :json)
