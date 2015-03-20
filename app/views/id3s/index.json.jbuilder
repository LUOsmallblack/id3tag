json.array!(@id3s) do |id3|
  json.extract! id3, :id, :title, :artist, :album
  json.url id3_url(id3, format: :json)
end
