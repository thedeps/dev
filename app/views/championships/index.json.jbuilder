json.array!(@championships) do |championship|
  json.extract! championship, :id, :name, :prize, :match_id
  json.url championship_url(championship, format: :json)
end
