json.extract! room, :id, :user, :title, :type, :address, :deposit, :rent_money, :picture, :detail, :created_at, :updated_at
json.url room_url(room, format: :json)