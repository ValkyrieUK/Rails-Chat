class User < ActiveRecord::Base
  # attr_accessible :title, :body
  validates :email, presence: true,         format: { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/}
  validates_length_of :email, maximum: 254
end
