require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Test User', photo: 'https://www.abolger.co.post', bio: 'Great dude', posts_counter: 1) }

  before { subject.save }

  after { subject.destroy }

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Post must be not be nil photo' do
    subject.photo = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a bio' do
    subject.bio = 'great'
    expect(subject).to_not be_valid
  end
  it 'is not valid must be an integer' do
    subject.posts_counter = 'five'
    expect(subject).to_not be_valid
  end
  it 'is not valid without a posts_counter' do
    subject.posts_counter = -1
    expect(subject).to_not be_valid
  end
end
