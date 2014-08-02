json.array!(@coocos) do |cooco|
  json.extract! cooco, :id, :content, :user_id
  json.url cooco_url(cooco, format: :json)
end
