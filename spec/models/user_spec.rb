# require '<rails></rails>_helper'
require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) {build(:user)}
    it "name is string" do
      expect(user.name.class =="String").to be_truth
    end
end
