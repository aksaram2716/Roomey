
json.extract! financialrecord, :id, :amount, :dateOwed, :datePaid, :receiverUID, :recieverSID
json.url financialrecord_url(home, format: :json)
