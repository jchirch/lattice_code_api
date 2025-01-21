require 'rails_helper'

RSpec.describe Language, type: :model do
  describe 'associations' do
    it { should have_many(:from_courses).class_name('Course').with_foreign_key('from_language_id') }
    it { should have_many(:to_courses).class_name('Course').with_foreign_key('to_language_id') }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_numericality_of(:skill).only_integer }
  end
end