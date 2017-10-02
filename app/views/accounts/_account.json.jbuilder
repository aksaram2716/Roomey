json.extract! account, :id, :name, :password, :email, :phone", :address, :created_at, :updated_at
json.url account_url(account, format: :json)
