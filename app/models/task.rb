class Task < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :status, presence: true, numericality: { only_integer: true }
  validates :difficulty, presence: true, numericality: { only_integer: true }
  validates :close_date, presence: true
  validates :close_limit_date, presence: true
  validates :user_id, presence: true, numericality: { only_integer: true }
end
