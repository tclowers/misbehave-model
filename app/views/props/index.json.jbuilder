json.array!(@props) do |prop|
  json.extract! prop, :id, :name, :description
  json.url prop_url(prop, format: :json)
end
