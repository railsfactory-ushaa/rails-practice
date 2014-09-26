json.array!(@resolutions) do |resolution|
  json.extract! resolution, :id, :size, :name, :description
  json.url resolution_url(resolution, format: :json)
end
