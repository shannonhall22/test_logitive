json.array!(@publishers) do |publisher|
  json.extract! publisher, :id, :name, :user_id
  json.url publisher_url(publisher, format: :json)
end
