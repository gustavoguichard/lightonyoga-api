json.extract! family, :id, :name, :translation
json.slug family.to_param
json.url family_url(family, format: :json)
