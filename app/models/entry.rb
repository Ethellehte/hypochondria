class Entry < ApplicationRecord
  belongs_to :user
  has_many :measurements
  validates :user_id, presence: true
  validates :time, presence: true
end
