class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table do |t|
      t.integer :star_rating
      t.string :comment
    end
  end
end
