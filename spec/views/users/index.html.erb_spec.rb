require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      FactoryGirl.create(:user, name: "User name", email: "user@example.com", is_admin: true),
      FactoryGirl.create(:user, email: "user2@example.com", is_admin: true),
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "User name".to_s, :count => 1
    assert_select "tr>td", :text => "user@example.com".to_s, :count => 1
    assert_select "tr>td", :text => "user2@example.com".to_s, :count => 1
    assert_select "tr>td", :text => "(84) 99819-8816".to_s, :count => 2
    assert_select "tr>td", :text => true.to_s, :count => 2
  end
end
