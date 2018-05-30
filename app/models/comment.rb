class Comment < ApplicationRecord
  # Direct associations

  belongs_to :restaurant,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :body, :presence => { :message => "Can't be blank" }

end
