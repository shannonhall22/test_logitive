json.array!(@media_plans) do |media_plan|
  json.extract! media_plan, :id, :objective, :title
  json.url media_plan_url(media_plan, format: :json)
end
