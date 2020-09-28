json.extract! @tag, :id, :name, :category, :content
json.slug @tag.to_param
json.variations @tag.variations do |variation|
  json.id variation.id
  json.name variation.name
  json.image variation.image
  json.tagline variation.tagline
  json.tags variation.tag_ids
  json.slug variation.to_param
  json.asana do
    json.id variation.asana.id
    json.name variation.asana.name
    json.slug variation.asana.to_param
  end
end
json.url tag_url(@tag, format: :json)
