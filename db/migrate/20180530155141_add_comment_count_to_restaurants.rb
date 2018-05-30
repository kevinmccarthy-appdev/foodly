class AddCommentCountToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :comments_count, :integer
  end
end
