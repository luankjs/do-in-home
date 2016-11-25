class Task < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :status, presence: true, numericality: { only_integer: true }
  validates :difficulty, presence: true, numericality: { only_integer: true }
  validates :close_date, presence: true
  validates :close_limit_date, presence: true
  validates :user, presence: true

  after_save :check_conclusion

  private
  def check_conclusion
    if (self.status_changed?(from: 0, to: 1))
      score = Score.new
      score.task = self
      score.user = self.user
      score.points = set_pontuation
      score.save
    end
  end

  def set_pontuation
    score = 0
    if self.close_limit_date > Date.today
      score += 15
    elsif self.close_limit_date == Date.today
      score += 10
    elsif self.close_limit_date < Date.today
      score += 5
    end

    score = score * self.difficulty
  end
end
