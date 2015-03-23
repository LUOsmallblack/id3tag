class Uriinfo
  include Mongoid::Document
  field :name, type: String
  field :uri, type: String
  field :originurl, type: String
  has_and_belongs_to_many :id3s
end
