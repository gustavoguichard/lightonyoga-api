json.extract! @variation, :id, :name, :slug, :image, :tagline, :updated_at
json.content @variation.content&.body
json.asana do
  json.extract! @variation.asana, :id, :name, :slug, :image
end
json.relateds @variation.exercise.related_relations do |relation|
  json.extract! relation.related.content, :id, :slug
  json.extract! relation.related, :name, :full_name, :image
  json.extract! relation, :comment, :category
  json.parent_slug relation.related.content_type == 'Variation' ? relation.related.content.asana.slug : nil
end
json.tags @variation.tags do |tag|
  json.extract! tag, :id, :name, :category, :slug
end
json.url variation_url(@variation, format: :json)
