require 'cat_facts'

RSpec.describe CatFacts do
  it "shows cat fact" do
    fake_responder = double :responder
    allow(fake_responder).to receive(:get).with(
      URI("https://catfact.ninja/fact")
    ).and_return('{"fact":"Kittens remain with their mother till the age of 9 weeks.","length":57}')
  
    cat_fact = CatFacts.new(fake_responder)
    result = cat_fact.provide
    expect(result).to eq "Cat fact: Kittens remain with their mother till the age of 9 weeks."
  end
end