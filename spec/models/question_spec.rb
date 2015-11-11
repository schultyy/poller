require 'rails_helper'

RSpec.describe Question, type: :model do

  it "is valid with title" do
    expect(Question.new(title: "Foo").valid?).to eq(true)
  end

  it "is not valid without title" do
    expect(Question.new().valid?).to_not eq(true)
  end

  it "has a unique url" do
    Question.create(title: "dies und das", url: "abc")

    expect(Question.new(title: "dies und das", url: "abc").valid?).to be false
  end
end
