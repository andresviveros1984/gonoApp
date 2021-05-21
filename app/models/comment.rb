class Comment < ApplicationRecord
  validates :comment, presence: true, length: {minimum: 10, maximum: 100}

end