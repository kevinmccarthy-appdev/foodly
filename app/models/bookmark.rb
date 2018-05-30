class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => true

  belongs_to :restaurant

  # Indirect associations

  # Validations

end
