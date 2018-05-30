class Restaurant < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :zipcode, :presence => { :message => "Can't be blank" }

  validates :zipcode, :length => { :minimum => 5, :maximum => 5 }

end
