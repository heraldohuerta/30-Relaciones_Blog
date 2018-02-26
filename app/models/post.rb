class Post < ApplicationRecord
  validates :content, presence: true
  has_many :comments
end
