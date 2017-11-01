
json.extract! grocerylist, :id, :name, :price, :timesBought
json.url grocerylist_url(grocerylist, format: :json)
