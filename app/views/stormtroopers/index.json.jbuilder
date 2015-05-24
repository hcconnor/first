json.array!(@stormtroopers) do |stormtrooper|
  json.extract! stormtrooper, :id, :name, :unit
  json.url stormtrooper_url(stormtrooper, format: :json)
end
