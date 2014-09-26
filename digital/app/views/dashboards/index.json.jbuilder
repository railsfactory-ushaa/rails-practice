json.array!(@dashboards) do |dashboard|
  json.extract! dashboard, :id, :order_id, :user_id, :device_id
  json.url dashboard_url(dashboard, format: :json)
end
