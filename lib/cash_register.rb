class CashRegister
    attr_accessor :total, :discount, :items, :prices

    def initialize(discount=nil)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(item, price, quantity = 1)
        @total += price * quantity
        @items << item
        @prices << price

    end

    def apply_discount
        if discount 
            @total = @total * ((100-discount)/100)
            puts "After the discount, the total comes to #{@total}."
        else
            puts "There is no discount to apply."
        end
        
    end

    def void_last_transaction
        if items.length == 1
            #take the last item's price
            last_item_price = @prices[-1]
            #subtract from total
            @total -= last_item_price
        else
            @total = 0
        end
    end



end
