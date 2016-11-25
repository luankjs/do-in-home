require 'rails_helper'

RSpec.describe Score, type: :model do
  describe "#points" do
    it { should validate_presence_of :points }

    it { should validate_numericality_of :points }
  end

  describe "#user" do
    it { should validate_presence_of :user_id }
  end

  describe "#task" do
    it { should validate_presence_of :task_id }
  end
end
