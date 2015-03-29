class Id3
  include Mongoid::Document
  field :title, type: String
  field :artist, type: String
  field :album, type: String
  has_and_belongs_to_many :uriinfos
  accepts_nested_attributes_for :uriinfos
end
