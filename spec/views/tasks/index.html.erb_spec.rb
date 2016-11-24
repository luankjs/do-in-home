require 'rails_helper'

RSpec.describe "tasks/index", type: :view do
  before(:each) do
    assign(:tasks, [
      FactoryGirl.create(:task, title: "Task 1",
                                user: FactoryGirl.create(:user, name: "Chico")),
      FactoryGirl.create(:task, title: "Task 2",
                                user: FactoryGirl.create(:user, name: "João", email: Faker::Internet.email))
    ])
  end

  it "renders a list of tasks" do
    render
    assert_select "tr>td", :text => "Task 1".to_s
    assert_select "tr>td", :text => "Task 2".to_s
    assert_select "tr>td", :text => "Chico".to_s
    assert_select "tr>td", :text => "João".to_s
  end
end
