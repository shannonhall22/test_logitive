json.array!(@placements) do |placement|
  json.extract! placement, :id, :name, :start_date, :end_date, :impressions, :cpm_cost, :cpc_cost, :total_cost
  json.url placement_url(placement, format: :json)
end
