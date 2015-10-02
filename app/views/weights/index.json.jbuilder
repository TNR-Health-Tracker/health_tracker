json.array!(@weights) do |weight|
  json.extract! weight, :id, :pounds, :entry_date
  json.url weight_url(weight, format: :json)
end
