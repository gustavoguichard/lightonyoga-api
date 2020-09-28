json.extract! family, :id, :name, :translation
json.slug family.to_param
json.asana_ids family.asana_ids
json.url family_url(family, format: :json)
