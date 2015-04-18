class Review < ActiveRecord::Base
  validates :body, presence: true
  belongs_to :product
end
