class Order
  include DataMapper::Resource

  property :id, Serial
  property :paid, Boolean
  property :delivery_info, Text
  property :delivered, Boolean
  property :delivered_at, DateTime
  property :created_at, DateTime
  property :due_at, DateTime

  belongs_to :user

  has n, :products
  has n, :statuses

end