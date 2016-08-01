class Examination < ApplicationRecord
  has_many :questions, through: :examination_questions
  has_many :examination_questions
  has_many :examinees, class_name: "AnswerSheet", foreign_key: "examinee_id"
  has_many :answer_sheets
  belongs_to :creator, class_name: "User"

  scope :index, -> { all }
end
