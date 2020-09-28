json.extract! movement, :id, :name, :joint
json.asana_ids movement.asana_ids
json.slug movement.to_param
json.url movement_url(movement, format: :json)
