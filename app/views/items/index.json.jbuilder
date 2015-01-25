json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :part_identifier, :price, :shipping_fee
  json.url item_url(item, format: :json)
end
