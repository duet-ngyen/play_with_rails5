class ExaminationQuestion < ApplicationRecord
  belongs_to :question
  belongs_to :examination
end
