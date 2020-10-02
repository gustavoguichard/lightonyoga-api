json.extract! @tag, :id, :slug, :name, :category
json.content @tag.content&.body
json.variations @tag.variations do |variation|
  json.extract! variation, :id, :name, :picture, :tagline
  json.slug variation.to_param
  json.tags variation.tag_ids
  json.asana do
    json.extract! variation.asana, :id, :name, :slug
  end
end
json.url tag_url(@tag, format: :json)
