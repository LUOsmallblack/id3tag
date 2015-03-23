json.array!(@uriinfos) do |uriinfo|
  json.extract! uriinfo, :id, :name, :uri, :originurl
  json.url uriinfo_url(uriinfo, format: :json)
end
