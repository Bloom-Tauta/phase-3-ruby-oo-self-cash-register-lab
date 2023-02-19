
require 'pry'
class CashRegister  
  attr_accessor :discount, :total, :items, :last_transaction, :price
    def initialize(discount = 20)
      @total = 0
      @discount = discount
      @items = []
      @price = price
    end

    def add_item(title, price = 0.98, quantity=1)
      self.last_transaction = price*quantity
      @total += self.last_transaction
      quantity.times { @items << title }
    end
    
    # def apply_discount
    #   return "There is no discount to apply" unless self.discount
    #   self.total = (self.total * (100.0 - self.discount) / 100).to_i
    #   "After the discount, the total comes to $#{self.total}."
    # end
    def apply_discount
      if self.discount == 0
        "There is no discount to apply" 
      end
      self.total = (self.total * (100.0 - self.discount) / 100).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  
    def void_last_transaction
      self.total -= self.last_transaction
    end

end
shopping = CashRegister.new(0)
shopping.add_item("milk", 2.0, 1)
# shopping.apply_discount("milk", 1000)
# binding.pry