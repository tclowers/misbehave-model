json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :active_question, :active_prop_question, :receptive_question, :receptive_prop_question
  json.url activity_url(activity, format: :json)
end
