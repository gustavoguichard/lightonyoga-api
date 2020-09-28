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
json.family do
  json.id @asana.family.id
  json.name @asana.family.name
  json.slug @asana.family.to_param
  json.translation @asana.family.translation
end
json.slug @asana.to_param
json.url asana_url(@asana, format: :json)
