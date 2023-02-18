require 'rails_helper'

RSpec.describe User, type: :model do
  subject { FactoryBot.create(:user, :confirmed) }

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
