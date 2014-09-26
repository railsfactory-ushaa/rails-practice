json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :device_id, :user_id, :order_id, :fromdate, :todate, :fromtime, :totime
  json.url schedule_url(schedule, format: :json)
end
