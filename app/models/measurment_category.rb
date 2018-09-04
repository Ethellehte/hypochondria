class MeasurmentCategory < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :title, presence: true
  validates :measurment_type, presence: true

  enum measurment_type: [:string_value, :integer_value]
end
