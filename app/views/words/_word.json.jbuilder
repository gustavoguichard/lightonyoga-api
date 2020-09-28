json.extract! word, :id, :name, :translation
json.slug word.to_param
json.url word_url(word, format: :json)
