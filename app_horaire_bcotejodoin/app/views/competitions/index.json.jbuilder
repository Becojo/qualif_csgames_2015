json.array!(@competitions) do |competition|
  json.extract! competition, :id, :nom, :date, :time
  json.url competition_url(competition, format: :json)
end
