class AnswerSheet < ApplicationRecord
  belongs_to :examination
  belongs_to :examinee, class_name: "User"
  has_many :answers
end
