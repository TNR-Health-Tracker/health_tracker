json.array!(@calories) do |calory|
  json.extract! calory, :id, :in, :out, :entry_date
  json.url calory_url(calory, format: :json)
end
