require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#name" do
    it { should validate_presence_of :name }
  end

  describe "#email" do
    it { should validate_presence_of :email }
  end

  describe "#phone" do
    it { should validate_presence_of :phone }
  end

  describe "#is_admin" do
    it { should validate_presence_of :is_admin }
  end

  describe "testing validations" do
    it "should create User" do
      user = FactoryGirl.create(:user, is_admin: true)

      expect(user).to be_a_valid(User)
    end

    it "should return an exception" do
      expect {
        FactoryGirl.create(:user, name: "", email: "", phone: "", is_admin: nil)
      }.to raise_error ActiveRecord::RecordInvalid
    end
  end
end
