class Comment < ApplicationRecord
  VALID_LENGTH_RANGE = (10..256).freeze

  mount_uploader :image, ImageUploader

  belongs_to :task, counter_cache: true

  validates :body, presence: true
  validates :body, length: { in: VALID_LENGTH_RANGE }
end
