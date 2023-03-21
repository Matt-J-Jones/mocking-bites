require 'diary'
require 'secret_diary'

RSpec.describe "Secret Diary Integration" do
  it "initializes new diary object, returns locked" do
    new_post = Diary.new("Hello, World")
    diary = SecretDiary.new(new_post)
    expect(diary.read).to eq "Go away!"
  end

  it "initializes new diary object, returns unlocked" do
    new_post = Diary.new("Hello, World")
    diary = SecretDiary.new(new_post)
    diary.unlock
    expect(diary.read).to eq "Hello, World"
  end

  it "initializes new diary object, returns locked, unlocks, returns unlocked" do
    new_post = Diary.new("Hello, World")
    diary = SecretDiary.new(new_post)
    diary.unlock
    expect(diary.read).to eq "Hello, World"
    diary.lock
    expect(diary.read).to eq "Go away!"
  end
end