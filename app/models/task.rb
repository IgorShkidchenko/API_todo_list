class Task < ApplicationRecord
  include ActiveModel::Validations

  acts_as_list scope: :project

  belongs_to :project
  has_many :comments, dependent: :destroy

  validates :name, presence: true
  validates :deadline, future_deadline: true, if: :deadline_changed?
end
