class Article < ApplicationRecord
  scope :index, -> { all }
end
