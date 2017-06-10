class Book < ApplicationRecord
	acts_as_votable
	has_many :comments
	has_many :orders
end
