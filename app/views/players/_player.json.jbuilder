json.extract! player, :id, :name, :rating, :info, :created_at, :updated_at
json.url player_url(player, format: :json)