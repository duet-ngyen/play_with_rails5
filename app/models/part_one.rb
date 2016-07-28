class PartOne < Question
  mount_uploader :audio, VideoUploader
  mount_uploader :photo, PhotoUploader

  validates :correct_option, presence: true
  validates :audio, presence: true
  validates :photo, presence: true
end
