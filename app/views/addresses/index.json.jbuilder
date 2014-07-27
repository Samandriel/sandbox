json.array!(@addresses) do |address|
  json.extract! address, :id, :street, :city, :country
  json.url address_url(address, format: :json)
end
