class Story < ApplicationRecord
  has_many :options, inverse_of: :story
  accepts_nested_attributes_for :options, allow_destroy: true
end
