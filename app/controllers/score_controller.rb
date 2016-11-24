class ScoreController < ApplicationController
  def index
    @scores = Score.all
  end
end
