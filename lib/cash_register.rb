require 'pry'

class CashRegister
  # attr_accessor :total, :quantity, :title, :price, :items, :final_total
  # attr_reader :discount
  
  attr_accessor :total, :discount, :price
    attr_reader :title, :quantity
  

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @quantity = 1
    @items = []
  end
  
  def total 
    @total
  end
  
  # def add_item(title, price, quantity = 1)
  #   @total += (price * quantity)
    
  #   # @price = price
  #   # @quantity += quantity
  #   @title = title 
  #   # @@all.push(@title)
  #   # @@all
  # end
  
  # def add_item(item, price, quantity = 1)
  #   @price = price
  #   @total += price * quantity
  #   if quantity > 1
  #     counter = 0
  #     while counter < quantity
  #       @items << item
  #       counter += 1
  #     end
  #   else
  #     @items << item
  #   end
  # end

  def add_item(title, price, quantity = 1)
        @title = title
        @price = price
        @quantity = quantity
        @quantity.times do
            @items << @title
        end
        @total += (@price * @quantity)
    end
  
  def apply_discount
    if @discount > 0
      @total -= (@discount * @total)/100
    "After the discount, the total comes to $#{@total}."
  else 
    "There is no discount to apply."
    end
  end
    
  def items
   @items
  end
  
  def void_last_transaction 
  @total -= (@price * @quantity)
  end
  
end
