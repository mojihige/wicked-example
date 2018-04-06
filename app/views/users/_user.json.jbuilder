json.extract! user, :id, :email, :password, :zip, :address, :message, :created_at, :updated_at
json.url user_url(user, format: :json)
