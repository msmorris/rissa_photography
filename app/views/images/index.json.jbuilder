json.array!(@images) do |image|
  json.extract! image, :id, :name, :rating, :description, :category
  json.url image_url(image, format: :json)
end
