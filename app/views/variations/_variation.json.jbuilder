json.extract! variation, :id, :name, :image, :tagline, :updated_at
json.asana do
  json.id variation.asana.id
  json.name variation.asana.name
  json.image variation.asana.image
  json.slug variation.asana.to_param
end
json.tag_ids variation.tag_ids
json.slug variation.to_param
json.url variation_url(variation, format: :json)
