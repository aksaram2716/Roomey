
json.extract! event, :id, :name, :description, :creationDate, :eventDate, :user_id
json.url event_url(home, format: :json)
