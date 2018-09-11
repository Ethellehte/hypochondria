class User < ApplicationRecord
  has_many :entries
  has_many :measurment_categories
  has_many :measurments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum blood_type: {A:1, B:2, AB:3, O:4}
  validates :first_name, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  validates :email, presence: true

end
