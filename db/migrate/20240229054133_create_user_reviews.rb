class CreateUserReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :user_reviews do |t|
      t.text :content
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
