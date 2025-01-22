require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:courses).dependent(:destroy) }
    it { should have_many(:user_languages).dependent(:destroy) }
    it { should have_many(:languages).through(:user_languages) }
  end

  describe 'validations' do
    it { should validate_presence_of(:firstname) }
    it { should validate_presence_of(:lastname) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email)}
  end
end
