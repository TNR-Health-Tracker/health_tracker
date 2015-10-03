json.array!(@steps) do |step|
  json.extract! step, :id, :taken, :entry_date
  json.url step_url(weight, format: :json)
end
