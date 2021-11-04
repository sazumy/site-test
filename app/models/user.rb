class User < ApplicationRecord
  # user has_many :friends_reverse, through :reverse_friendships
  has_many :relationships, dependent: :destroy
  has_many :friends, through: :relationships, source: :friend
end
