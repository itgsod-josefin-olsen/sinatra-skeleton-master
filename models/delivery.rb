class Delivery
  include DataMapper::Resource

  property :id, Serial
  property :address, String
  property :time, String
  property :date, String

  has n, :lineitem
  belongs_to :order
end