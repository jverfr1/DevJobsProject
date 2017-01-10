require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) {build(:user)}
    it "has a valid factory" do
      expect(user).to be_valid
    end
    it "is invalid without an email" do
      user.email = nil
      expect(user).not_to be_valid
    end
    it "has at least 6 characters" do
      chars = user.password.size
      expect(chars>5).to be_truthy
    end
    it "has at least 6 characters" do
      chars = user.password.size
      expect(chars<5).to be_falsey
    end
    it "is invalid if password.length < 6" do
      user.password = "1234"
      expect(user).not_to be_valid
    end
    it "name is a string" do
      expect(user.name.class).to be == String
    end
    it "last_name is a string" do
      expect(user.last_name.class).to be == String
    end
    it "position is a string" do
      expect(user.position.class).to be == String
    end
    it "experience is a string" do
      expect(user.experience.class).to be == String
    end
    it "email contains @" do
      expect(user.email.include? "@").to be_truthy
    end
    it "email has to include an @" do
      user.email = "jonathan.com"
      expect(user.email.include? "@").to be_falsey
    end
    it "position is Junior, Medior or Senior" do
      expect(user.position.include? "Junior").to be_truthy
    end
end


