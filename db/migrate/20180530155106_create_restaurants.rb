class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :price
      t.string :address
      t.string :city
      t.integer :zipcode
      t.string :cuisine
      t.integer :foodly_rating
      t.integer :yelp_rating
      t.string :yelp_url
      t.integer :newspaper_rating
      t.string :newspaper_url
      t.integer :infatuation_rating
      t.string :infatuation_url
      t.integer :google_rating
      t.string :google_url

      t.timestamps

    end
  end
end
