require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = FactoryGirl.create(:user, is_admin: true)
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_phone[name=?]", "user[phone]"

      assert_select "input#user_is_admin[name=?]", "user[is_admin]"

      assert_select "input#user_password[name=?]", "user[password]"

      assert_select "input#user_password_confirmation[name=?]", "user[password_confirmation]"
    end
  end
end
