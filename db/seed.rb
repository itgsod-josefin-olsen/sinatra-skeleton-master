class Seeder

  def self.seed!
    self.line_item
    self.order
    self.product
    self.status
    self.user
  end

  def self.line_item
    LineItem.create(price: "3kr", amount: "5", product: "Kladdkaka")
    LineItem.create(price: "7kr", amount: "7", product: "Blåbärspaj")
  end

  def self.order
    Order.create(paid: true, delivery_info: "bajs", delivered: "True", delivered_at: "Grens väg 12",
                 created_at: "12.00 2/11-14", due_at: "13.00 3/11-14")
  end

  def self.product
    Product.create(name: "Chokladboll", price: "8kr", description: "God chokladboll nomnom",order_id: 1)
    Product.create(name: "Vaniljkaka", price: "4kr", description: "Vanilj is really good, yas", order_id: 2)
  end

  def self.status
    Status.create(name: "Levererad", order_id: 1)
    Status.create(name: "Bakas", order_id: 2)
  end

  def self.user
    User.create(username: "Joggiz", password: "bananer", contact_info: "Shit")
  end
end
