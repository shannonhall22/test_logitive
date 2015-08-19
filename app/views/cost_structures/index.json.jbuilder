json.array!(@cost_structures) do |cost_structure|
  json.extract! cost_structure, :id, :name
  json.url cost_structure_url(cost_structure, format: :json)
end
