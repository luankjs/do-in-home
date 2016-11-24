FactoryGirl.define do
  factory :task do
    title "Task"
    description "Description for task"
    status 1
    difficulty 1
    close_date Date.today
    close_limit_date Date.tomorrow
    user
  end
end
