require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid" do
    expect(build(:user).valid?).to eq(true)
  end
end
