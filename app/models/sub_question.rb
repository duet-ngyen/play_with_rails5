class SubQuestion < ApplicationRecord
  belongs_to :resource, polymorphic: true, optional: true
  has_many :options

  accepts_nested_attributes_for :options
end
