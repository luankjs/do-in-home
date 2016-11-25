require 'rails_helper'

RSpec.describe "tasks/new", type: :view do
  before(:each) do
    assign(:task, Task.new(
      :title => "MyString",
      :description => "MyText",
      :status => 1,
      :difficulty => 1,
      :user => nil
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "input#task_title[name=?]", "task[title]"

      assert_select "textarea#task_description[name=?]", "task[description]"

      assert_select "input#task_status[name=?]", "task[status]"

      assert_select "input#task_difficulty[name=?]", "task[difficulty]"

      assert_select "input#task_user_id[name=?]", "task[user_id]"
    end
  end
end
