class Option < ApplicationRecord
  belongs_to :story, optional: true
  belongs_to :option, optional: true
  has_many :options
  accepts_nested_attributes_for :options, allow_destroy: true
end
