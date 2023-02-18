require 'rails_helper'

RSpec.describe Expenditure, type: :model do
  subject { Expenditure.create(name: 'Shirts', amount: 1000, category_ids: []) }

  before { subject.save }

  it 'should have a name' do
    subject.name = nil
    subject.save
    expect(subject).to_not be_valid
  end

  it 'has an amount' do
    subject.amount = 1000
    expect(subject.amount).to eq 1000
  end
end
