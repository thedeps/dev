json.array!(@teams) do |team|
  json.extract! team, :id, :nome, :tag, :capitao_id, :jogadores
  json.url team_url(team, format: :json)
end
