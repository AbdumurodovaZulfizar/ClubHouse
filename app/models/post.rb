class Post < ApplicationRecord
  belongs_to :user
  validates :post, length: { minimum: 2 }
end
