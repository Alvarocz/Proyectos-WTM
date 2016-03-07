json.array!(@pilots) do |pilot|
  json.extract! pilot, :id, :name, :identification
  json.url pilot_url(pilot, format: :json)
end
