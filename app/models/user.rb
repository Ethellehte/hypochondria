class User < ApplicationRecord
  has_many :entries
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum blood_type: [:A, :B, :AB, :O]
  validates :first_name, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  validates :email, presence: true

end
