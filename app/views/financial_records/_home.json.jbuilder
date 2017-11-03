
json.extract! financialrecord, :id, :amount, :homes_id, :dateOwed, :datePaid, :receiverUID, :recieverSID, :paid, :users_id
json.url financialrecord_url(home, format: :json)
