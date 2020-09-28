json.extract! tag, :id, :name, :category
json.slug tag.to_param
json.asana_ids tag.asana_ids
json.variation_ids tag.variation_ids
json.url tag_url(tag, format: :json)
