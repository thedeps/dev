json.array!(@matches) do |match|
  json.extract! match, :id, :team1_id, :team2_id, :date_match, :link
  json.url match_url(match, format: :json)
end
