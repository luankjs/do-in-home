FactoryGirl.define do
  factory :task do
    title "Task"
    description "Description for task"
    status 1
    difficulty 1
    close_date "2016-11-23"
    close_limit_date "2016-11-23"
    user user
  end
end
