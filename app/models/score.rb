class Score < ApplicationRecord
  belongs_to :user
  belongs_to :task

  validates :points, presence: true, numericality: { only_integer: true }
  validates :user_id, presence: true
  validates :task_id, presence: true
end
