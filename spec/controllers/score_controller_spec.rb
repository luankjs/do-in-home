require 'rails_helper'

RSpec.describe ScoreController, type: :controller do

  before do
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  describe "GET #index" do
    before do
      @user2 = FactoryGirl.create(:user, email: "e2@example.com")
      task = FactoryGirl.create(:task, user: @user, status: 0, difficulty: 2, close_limit_date: Date.today.yesterday)
      task2 = FactoryGirl.create(:task, user: @user2, status: 0, difficulty: 1, close_limit_date: Date.today.tomorrow)

      task.update_attributes(status: 1)
      task2.update_attributes(status: 1)
    end
    it "assigns returns actualy ranking version" do
      get :index

      expect(assigns(:ranking).first.id).to eq(@user2.id)
      expect(assigns(:ranking).first.name).to eq(@user2.name)
    end
  end
end
