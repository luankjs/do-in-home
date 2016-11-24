require 'rails_helper'

RSpec.describe "tasks/show", type: :view do
  before(:each) do
    @task = assign(:task, FactoryGirl.create(:task))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Task/)
    expect(rendered).to match(/Description for task/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1/)
  end
end
