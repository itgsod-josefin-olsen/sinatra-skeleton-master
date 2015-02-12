class User
  include DataMapper::Resource

  property :id, Serial
  property :username, String
  property :password, String
  property :contactinfo, Text

  belongs_to :order

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def name
    "#{@first_name} #{@last_name}"
  end


end