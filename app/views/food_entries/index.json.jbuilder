json.array!(@foods) do |food|
  json.extract! step, :id, :name, :calories, :entry_date
  json.url step_url(weight, format: :json)
end
