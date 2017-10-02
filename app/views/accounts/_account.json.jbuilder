json.extract! account, :id, :name, :password, :email, :created_at, :updated_at
json.url account_url(account, format: :json)
