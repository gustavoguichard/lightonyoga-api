json.extract! @movement, :id, :name, :joint, :slug
json.content @movement.content&.body
json.asanas @movement.asanas do |asana|
  json.extract! asana, :id, :name, :image, :slug, :translation
end
json.url movement_url(@movement, format: :json)
