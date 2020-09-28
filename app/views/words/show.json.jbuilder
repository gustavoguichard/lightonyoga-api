json.extract! @word, :id, :name, :translation
json.asanas @word.asanas do |asana|
  json.id asana.id
  json.name asana.name
  json.image asana.image
  json.slug asana.to_param
  json.translation asana.translation
end
json.slug @word.to_param
json.url word_url(@word, format: :json)
