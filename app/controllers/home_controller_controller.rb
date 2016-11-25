class HomeControllerController < ApplicationController
  before_action :authenticate_user!
  def index
    @tasks = Task.where(user: current_user).order(close_limit_date: :asc)
  end
end
