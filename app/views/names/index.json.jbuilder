json.array!(@names) do |name|
  json.extract! name, :id, :db_entity, :type
  json.url name_url(name, format: :json)
end
