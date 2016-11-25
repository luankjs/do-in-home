class ScoreController < ApplicationController
  def index
    @ranking = User.joins(:scores)
                    .select('users.id, users.name, sum(scores.points) as points').group(:id)
                    .order('points DESC')
  end
end
