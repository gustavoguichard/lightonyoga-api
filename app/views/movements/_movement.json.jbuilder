json.extract! movement, :id, :name, :joint, :asanas
json.slug movement.to_param
json.url movement_url(movement, format: :json)
