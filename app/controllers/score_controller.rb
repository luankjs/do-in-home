class ScoreController < ApplicationController
  def index
    # @scores = Score.all(:group => "user_id", :order => "created_at")
    @scores = Score.group("user_id").select("user_id, SUM(points) as points").order("points DESC")
  end
end
