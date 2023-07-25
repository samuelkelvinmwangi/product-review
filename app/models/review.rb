class CreateReview < ActiveRecord::Base
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
end