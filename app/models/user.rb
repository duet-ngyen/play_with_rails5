class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :questions, foreign_key: "creator_id"
  has_many :part_ones, foreign_key: "creator_id"
  has_many :answer_sheets, foreign_key: "examinee_id"
  has_many :examinations, foreign_key: "creator_id"
end
