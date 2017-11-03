
json.extract! grocerylist, :id, :name, :price, :timesBought, :homes_id
json.url grocerylist_url(grocerylist, format: :json)
