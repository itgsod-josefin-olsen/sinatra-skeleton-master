class Order
  include DataMapper::Resource

  property :id, Serial
  property :payment, String
  property :contactinfo, Text
  property :date, String
  property :time, String

  has n, :products
  has n, :statuses
  has n, :users
  has n, :deliveries

end