json.extract! @word, :id, :name, :translation, :slug
json.asanas @word.asanas do |asana|
  json.extract! asana, :id, :name, :image, :translation, :slug
end
json.url word_url(@word, format: :json)
