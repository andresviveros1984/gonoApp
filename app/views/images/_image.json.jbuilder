json.extract! image, :id, :title, :author, :description, :public, :created_at, :updated_at
json.url image_url(image, format: :json)
