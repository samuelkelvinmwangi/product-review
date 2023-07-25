class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
   
    # creating associations of product and  reviews
    def reviews
        self.reviews
    end

    # creating associations of product and users
    def users
        self.users
    end
    
end