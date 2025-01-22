require 'rails_helper'

RSpec.describe Course, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:from_language).class_name('Language').with_foreign_key('from_language_id') }
    it { should belong_to(:to_language).class_name('Language').with_foreign_key('to_language_id') }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:lesson) }
    it { should validate_presence_of(:from_language_id) }
    it { should validate_presence_of(:to_language_id) }
  end
end