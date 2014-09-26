json.array!(@locations) do |location|
  json.extract! location, :id, :name, :postal_code
  json.url location_url(location, format: :json)
end
