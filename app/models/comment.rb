class Comment < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :body, :presence => { :message => "Can't be blank" }

end
