json.array!(@escorts) do |escort|
  json.extract! escort, :id, :name, :age, :description, :rate_per_hour_in_cents
  json.url escort_url(escort, format: :json)
end
