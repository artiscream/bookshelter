class User < ApplicationRecord
	acts_as_voter
	has_many :comments
	has_many :orders
	has_many :waitlists
	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
