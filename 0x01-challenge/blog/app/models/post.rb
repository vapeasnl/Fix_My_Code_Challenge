class Post < ApplicationRecord
  has_many  :comments, dependent: :destroy
  validates :title, presence: true, length: {minimum: 5}
	validates :body,  presence: true
        attribute :online, :boolean, default: true
end
