class User
  include DataMapper::Resource

  property :id, Serial
  property :username, String
  property :password, String
  property :contact_info, Text

  has n, :orders

end