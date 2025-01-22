require 'rails_helper'

RSpec.describe UserLanguage, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:language) }
  end

  describe 'validations' do
    it { should validate_numericality_of(:skill_level).only_integer.is_greater_than_or_equal_to(0) }
  end
end
