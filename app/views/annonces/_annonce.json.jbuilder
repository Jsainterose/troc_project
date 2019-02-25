json.extract! annonce, :id, :title, :description, :image_url, :location, :condition, :status, :created_at, :updated_at
json.url annonce_url(annonce, format: :json)
