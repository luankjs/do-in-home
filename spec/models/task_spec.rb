require 'rails_helper'

RSpec.describe Task, type: :model do
  describe "#title" do
    it { should validate_presence_of :title }
  end

  describe "#description" do
    it { should validate_presence_of :description }
  end

  describe "#status" do
    it { should validate_presence_of :status }

    it { should validate_numericality_of :status }
  end

  describe "#difficulty" do
    it { should validate_presence_of :difficulty }

    it { should validate_numericality_of :difficulty }
  end

  describe "#close_date" do
    it { should validate_presence_of :close_date }
  end

  describe "#close_limit_date" do
    it { should validate_presence_of :close_limit_date }
  end

  describe "#user" do
    it { should validate_presence_of :user }
  end

  describe "associations" do
    it { should belong_to :user }
  end
end
