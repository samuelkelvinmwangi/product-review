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

    #leave_review(user, star_rating, comment)
    def leave_review(user, star_rating, comment)
    Review.create(user: user, product: self, star_rating: star_rating, comment: comment)
    end

    #print_all_reviews
    def print_all_reviews
        reviews.each do |review|
            puts "Review for #{name} by #{review.user.name}: #{review.star_rating}. #{review.comment}"
         end
    end
    
    # average_rating
    def average_rating
        total_ratings = reviews.sum(:star_rating)
        total_reviews = reviews.count

        total_reviews > 0 ? total_ratings.to_f / total_reviews : 0
    end
    
end