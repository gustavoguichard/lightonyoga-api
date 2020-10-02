json.extract! @variation, :id, :name, :picture, :tagline, :updated_at
json.slug @variation.to_param
json.content @variation.content&.body
json.asana do
  json.extract! @variation.asana, :id, :name, :slug, :picture
end
json.relateds @variation.exercise.related_relations do |relation|
  json.extract! relation.related.content, :id
  json.extract! relation.related, :name, :parent_slug, :full_name, :picture
  json.extract! relation, :comment, :category
  json.slug relation.related.full_slug
end
json.tags @variation.tags do |tag|
  json.extract! tag, :id, :name, :category, :slug
end
json.url variation_url(@variation, format: :json)
