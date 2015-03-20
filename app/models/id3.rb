class Id3
  include Mongoid::Document
  field :title, type: String
  field :artist, type: String
  field :album, type: String
end
