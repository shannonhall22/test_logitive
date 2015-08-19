json.array!(@sites) do |site|
  json.extract! site, :id, :url, :publisher_id, :placement_id
  json.url site_url(site, format: :json)
end
