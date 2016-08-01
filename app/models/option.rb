class Option < ApplicationRecord
  belongs_to :sub_question, optional: true
end
