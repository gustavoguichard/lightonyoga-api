# frozen_string_literal: true

json.extract! @asana, :id, :slug, :name, :alternative_names, :translation, :picture, :advanced_actions, :connections, :observe, :benefits, :caution, :contraindications, :updated_at
json.content @asana.content&.body
json.setup @asana.setup&.body
json.entering @asana.entering&.body
json.legs @asana.legs&.body
json.core @asana.core&.body
json.trunk @asana.trunk&.body
json.arms @asana.arms&.body
json.head @asana.head&.body
json.all @asana.all&.body
json.leaving @asana.leaving&.body
json.curiosities @asana.curiosities&.body
json.words @asana.words do |word|
  json.extract! word, :id, :name, :slug, :translation
end
json.movements @asana.movements do |movement|
  json.extract! movement, :id, :name, :slug
end
json.variations @asana.variations do |variation|
  json.extract! variation, :id, :name, :picture, :slug, :tagline
  json.tags variation.tags do |tag|
    json.extract! tag, :id, :name, :category, :slug
  end
  json.asana do
    json.extract! variation.asana, :id, :name, :slug
  end
end
json.relateds @asana.exercise.related_relations do |relation|
  json.extract! relation.related.content, :id, :slug
  json.extract! relation.related, :name, :full_name, :picture
  json.extract! relation, :comment, :category
  json.parent_slug relation.related.content_type == 'Variation' ? relation.related.content.asana.slug : nil
end
json.family do
  json.extract! @asana.family, :id, :name, :slug, :translation
end
json.url asana_url(@asana, format: :json)
