class Seeder

  def self.seed
    self.delivery
    self.lineitem
    self.order
    self.product
    self.status
    self.user
  end

  def self.delivery
    Delivery.create(adress: "Stubbestigen 6", time: "13:00", date: "12/2")
    Delivery.create(adress: "Grens väg 12", time: "22:30", date: "31/1")
  end

  def self.lineitem
    Lineitem.create(price: "", amount: "", product: "")
    Lineitem.create(price: "", amount: "", product: "")
  end

  def self.order
    Order.create(paid: true, contact_info: "")
  end

  def self.product
    Product.create(name: "Chokladboll", price: "8kr", description: "God chokladboll nomnom")
    Product.create(name: "Vaniljkaka", price: "4kr", description: "Vanilj is really good, yas")
  end

  def self.status
    Status.create(name: "Levererad")
    Status.create(name: "Bakas")
  end

  def self.user
    User.create(username: "Joggiz", password: "bananer", contact_info: "")
  end

end
