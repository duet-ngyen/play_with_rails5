class PartTwo < Question
  mount_uploader :audio, AudioUploader

  validates :correct_option, presence: true
  validates :audio, presence: true

  scope :index, -> { all }
end
