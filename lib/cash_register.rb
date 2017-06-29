class CashRegister

attr_reader :discount, :items
attr_accessor :total, :last_transaction



    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        self.last_transaction = price * quantity
        self.total += self.last_transaction

        quantity.times do
            @items << title
        end



    end

    def apply_discount
        if self.discount == 0
            return "There is no discount to apply."
        else
            self.total = self.total - (self.total * self.discount / 100.0)
            return "After the discount, the total comes to $#{self.total.to_i}."
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end

end
