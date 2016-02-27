class Like < ActiveRecord::Base
  belongs_to :user

  # Sets up the polymorphic relationship
  belongs_to :likeable, polymorphic: true
end