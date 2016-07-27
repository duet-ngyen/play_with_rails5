class Option < ApplicationRecord
  belongs_to :sub_question
  belongs_to :question
end
