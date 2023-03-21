require 'secret_diary'

RSpec.describe SecretDiary do
  it "initializes new diary object, returns locked" do
    fake_diary = double(:fake_diary)
    diary = SecretDiary.new(fake_diary)
    expect(diary.read).to eq "Go away!"
  end

  it "initializes new diary object, returns unlocked" do
    fake_diary = double(:fake_diary, read: "Hello, World")
    diary = SecretDiary.new(fake_diary)
    diary.unlock
    expect(diary.read).to eq "Hello, World"
  end

  it "initializes new diary object, returns locked, unlocks, returns unlocked" do
    fake_diary = double(:fake_diary, read: "Hello, World")
    diary = SecretDiary.new(fake_diary)
    diary.unlock
    expect(diary.read).to eq "Hello, World"
    diary.lock
    expect(diary.read).to eq "Go away!"
  end
end