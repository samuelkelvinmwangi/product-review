class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :product

    # association of review and user
    def user
        self.user
    end
    
    # association of review and product
    def product
        self.product
    end

    # print_review
  def print_review
    puts "Review for #{product.name} by #{user.name}: #{star_rating}. #{comment}"
  end
end