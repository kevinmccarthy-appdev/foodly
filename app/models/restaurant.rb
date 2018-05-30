class Restaurant < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :zipcode, :length => { :minimum => 5, :maximum => 5 }

end
