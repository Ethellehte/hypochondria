class MeasurmentCategory < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  # validates :title, presence: true
  validates :input_type, presence: true

  enum input_type: [:string_value, :integer_value]
end
