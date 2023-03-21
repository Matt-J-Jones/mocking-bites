require 'diary'

RSpec.describe Diary do
  it "initializes empty diary object and returns empty" do
    new_post = Diary.new("")
    expect(new_post.read).to eq ""
  end

  it "initializes diary object and returns post" do
    new_post = Diary.new("Hello, World")
    expect(new_post.read).to eq "Hello, World"
  end
end