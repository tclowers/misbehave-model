json.array!(@questions) do |question|
  json.extract! question, :id, :verbiage, :active, :receptive, :type, :activity_id
  json.url question_url(question, format: :json)
end
