json.array!(@devices) do |device|
  json.extract! device, :id, :name, :description, :price, :location_id, :resolution_id, :work_from, :work_till
  json.url device_url(device, format: :json)
end
