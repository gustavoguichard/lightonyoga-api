json.extract! word, :id, :name, :translation
json.slug word.to_param
json.asana_ids word.asana_ids
json.url word_url(word, format: :json)
