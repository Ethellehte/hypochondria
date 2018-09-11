class Measurement < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :measurment_category, optional: true
  belongs_to :entry, optional: true
  validates :string_value, presence: true, allow_nil: :validate_fields
  validates :integer_value, presence: true, allow_nil: :validate_fields


  def validate_fields
    if !self.string_value.nil? && self.integer_value.nil?
      true
    elsif !self.integer_value.nil? && self.string_value.nil?
      true
    end
  end


end
