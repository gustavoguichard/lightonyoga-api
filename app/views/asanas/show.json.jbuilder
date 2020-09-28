# frozen_string_literal: true

json.extract! @asana, :id, :name, :translation, :image, :content, :setup, :entering, :legs, :core, :trunk, :arms, :head, :all, :leaving, :curiosities, :advanced_actions, :connections, :observe, :benefits, :caution, :contraindications, :updated_at
json.words @asana.words do |word|
  json.id word.id
  json.name word.name
  json.slug word.to_param
  json.translation word.translation
end
json.movements @asana.movements do |movement|
  json.id movement.id
  json.name movement.name
  json.slug movement.to_param
end
json.variations @asana.variations do |variation|
  json.id variation.id
  json.name variation.name
  json.image variation.image
  json.tagline variation.tagline
  json.tags variation.tags do |tag|
    json.id tag.id
    json.name tag.name
    json.category tag.category
    json.slug tag.to_param
  end
  json.slug variation.to_param
  json.asana do
    json.id variation.asana.id
    json.name variation.asana.name
    json.slug variation.asana.to_param
  end
end
json.family do
  json.id @asana.family.id
  json.name @asana.family.name
  json.slug @asana.family.to_param
  json.translation @asana.family.translation
end
json.slug @asana.to_param
json.url asana_url(@asana, format: :json)
