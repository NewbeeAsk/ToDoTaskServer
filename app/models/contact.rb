class Contact < ApplicationRecord
  acts_as_token_authenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true

  has_many :to_do_items
end
