class User
  include DataMapper::Resource

  property :id, Serial
  property :username, String
  property :password, BCryptHash
  property :contact_info, Text

  has n, :orders

end