class Restaurant < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :address, :presence => { :message => "Can't be blank" }

  validates :city, :presence => { :message => "Can't be blank" }

  validates :cuisine, :presence => { :message => "Can't be blank" }

  validates :name, :uniqueness => true

  validates :name, :presence => { :message => "Can't be blank" }

  validates :price, :presence => { :message => "Can't be blank" }

  validates :price, :numericality => { :less_than_or_equal_to => 4, :greater_than_or_equal_to => 1 }

  validates :zipcode, :presence => { :message => "Can't be blank" }

  validates :zipcode, :length => { :minimum => 5, :maximum => 5 }

end
