class PartOne < Question
  mount_uploader :audio, AudioUploader
  mount_uploader :photo, PhotoUploader

  validates :correct_option, presence: true
  validates :audio, presence: true
  validates :photo, presence: true

  scope :index, -> { all }
end
