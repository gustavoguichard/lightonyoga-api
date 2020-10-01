json.extract! @word, :id, :name, :translation, :slug
json.asanas @word.asanas do |asana|
  json.extract! asana, :id, :name, :picture, :translation, :slug
end
json.url word_url(@word, format: :json)
