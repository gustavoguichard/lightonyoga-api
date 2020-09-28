json.extract! @variation, :id, :name, :slug, :image, :tagline, :content, :updated_at
json.asana do
  json.id @variation.asana.id
  json.name @variation.asana.name
  json.image @variation.asana.image
  json.slug @variation.asana.to_param
end
json.tags @variation.tags do |tag|
  json.id tag.id
  json.name tag.name
  json.category tag.category
  json.slug tag.to_param
end
json.url variation_url(@variation, format: :json)
