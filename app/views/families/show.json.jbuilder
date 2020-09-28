json.extract! @family, :id, :name, :translation
json.asanas @family.asanas do |asana|
  json.id asana.id
  json.name asana.name
  json.image asana.image
  json.translation asana.translation
end
json.slug @family.to_param
json.url family_url(@family, format: :json)
