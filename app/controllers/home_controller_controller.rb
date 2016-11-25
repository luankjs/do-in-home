class HomeControllerController < ApplicationController
  def index
    @tasks = Task.where(user: current_user).order(close_limit_date: :asc)
  end
end
