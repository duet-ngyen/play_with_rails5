class User < ApplicationRecord
  has_many :questions, foreign_key: "creator_id"
  has_many :answer_sheets, foreign_key: "examinee_id"
  has_many :examinations, foreign_key: "creator_id"
end
