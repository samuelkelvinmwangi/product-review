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

    # favorite products
    def favorite_product
        reviews.order(star_rating: :desc).first.product
    end

    # remove reviews
    def remove_reviews(product)
        reviews.where(product: product).destroy_all
    end
end