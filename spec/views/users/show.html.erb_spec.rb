require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, FactoryGirl.create(:user, is_admin: true))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/User Name/)
    expect(rendered).to match(/user@example.com/)
    expect(rendered).to match(/true/)
  end
end
