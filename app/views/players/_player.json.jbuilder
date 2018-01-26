json.extract! player, :id, :name, :lastname, :goals, :worth, :club_id, :created_at, :updated_at
json.url player_url(player, format: :json)
