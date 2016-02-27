class ImageLink < ActiveRecord::Base
  validates_presence_of :url

  scope :recent, lambda { order('created_at DESC').limit(5) }

  belongs_to :user

  # Set up this side of the polymorphic association
  has_many :likes, as: :likeable
end