require "rails_helper"

RSpec.describe PasswordGenerator do
  subject { described_class.new(length: 10) }

  describe "#generate" do
    it "generates a password" do
      password = subject.generate

      expect(password).to be_a_kind_of(String)
      expect(password.size).to eq(10)
    end
  end
end
