class User < ActiveRecord::Base
  # see: https://github.com/plataformatec/devise
  devise :database_authenticatable, :registerable, :lockable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :follows
  has_many :image_links
  has_many :text_posts
  has_many :article_links
  has_many :likes

  validates :name, :presence => true
  validates :username, :presence => true, :uniqueness => true

  # Scope method to get all users except the one passed.
  #
  def self.all_except(user)
    User.where(arel_table[:id].not_eq(user.id)).order(:name)
  end

end
