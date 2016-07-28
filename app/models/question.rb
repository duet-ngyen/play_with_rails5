class Question < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :sub_questions
  has_many :options

  def option_s
    case correct_option
    when 1
      "A"
    when 2
      "B"
    when 3
      "C"
    when 4
      "D"
    else
      ""
    end
  end
end
