
json.extract! grocerylist, :id, :name, :price, :quantity
json.url grocerylist_url(grocerylist, format: :json)
