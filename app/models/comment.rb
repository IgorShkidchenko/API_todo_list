class Comment < ApplicationRecord
  VALID_BODY_LENGTH_RANGE = (10..256).freeze

  mount_uploader :image, ImageUploader

  belongs_to :task, counter_cache: true

  validates :body,
            presence: true,
            length: { in: VALID_BODY_LENGTH_RANGE }
end
