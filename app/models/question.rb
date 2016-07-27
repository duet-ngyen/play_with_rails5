class Question < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :sub_questions
  has_many :options
end
