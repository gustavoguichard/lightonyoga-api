json.extract! @family, :id, :name, :translation, :slug
json.content @family.content&.body
json.asanas @family.asanas do |asana|
  json.extract! asana, :id, :name, :picture, :slug, :translation
end
json.url family_url(@family, format: :json)
