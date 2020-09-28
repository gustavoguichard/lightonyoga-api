json.extract! @movement, :id, :name, :joint
json.asanas @movement.asanas do |asana|
  json.id asana.id
  json.name asana.name
  json.image asana.image
  json.slug asana.to_param
  json.translation asana.translation
end
json.slug @movement.to_param
json.url movement_url(@movement, format: :json)
