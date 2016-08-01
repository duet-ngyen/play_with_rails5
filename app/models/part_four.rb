class PartFour < Question
  mount_uploader :audio, AudioUploader

  has_many :sub_questions, as: :resource, dependent: :destroy

  validates :audio, presence: true

  scope :index, -> { all }

  accepts_nested_attributes_for :sub_questions
end
