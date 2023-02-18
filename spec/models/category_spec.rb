require 'rails_helper'

RSpec.describe Category, type: :model do
  subject { FactoryBot.create(:user, :confirmed) }

  before { subject.save }

  it 'should have a name' do
    subject.name = nil
    expect(subject).not_to be_valid
  end
end
