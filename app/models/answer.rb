class Answer < ApplicationRecord
  belongs_to :answer_sheet

  scope :index, -> { all }
end
