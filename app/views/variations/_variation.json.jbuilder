json.extract! variation, :id, :name, :image, :tagline, :updated_at
json.slug variation.to_param
json.url variation_url(variation, format: :json)
