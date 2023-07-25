class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews

    # association with reviews
    def reviews
        self.reviews
    end
    
    # association with products
    def products
        self.products
    end
end