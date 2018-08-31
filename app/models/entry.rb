class Entry < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :time, presence: true
end
