require 'rails_helper'

RSpec.describe HomeControllerController, type: :controller do
  describe "GET #index" do
    before do
      @user = FactoryGirl.create(:user, email: "user123@example.com")
      sign_in @user
    end

    it "should returns tasks of logged user" do
      task1 = FactoryGirl.create(:task, user: @user)
      task2 = FactoryGirl.create(:task)

      get :index

      expect(assigns(:tasks)).to eq([task1])
    end
  end

end
