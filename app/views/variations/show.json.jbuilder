json.extract! @variation, :id, :name, :slug, :image, :tagline, :content, :updated_at
json.asana do
  json.id @variation.asana.id
  json.name @variation.asana.name
  json.image @variation.asana.image
  json.slug @variation.asana.to_param
end
json.relateds @variation.exercise.related_relations do |relation|
  json.id relation.related.content.id
  json.name relation.related.name
  json.full_name relation.related.full_name
  json.slug relation.related.content.to_param
  json.parent_slug relation.related.content_type == 'Variation' ? relation.related.content.asana.to_param : nil
  json.image relation.related.image
  json.comment relation.comment
  json.category relation.category
end
json.tags @variation.tags do |tag|
  json.id tag.id
  json.name tag.name
  json.category tag.category
  json.slug tag.to_param
end
json.url variation_url(@variation, format: :json)
