require('rspec')
require('scrabble')
Capybara.app = Sinatra::Application
describe('String#scrabble') do

  it("it capitalizes a word then splits into an array of letters") do
    expect("hi".upcase!().split("")).to(eq(["H", "I"]))
  end

  it("returns a scrabble score for a letter") do
    expect("a".scrabble()).to(eq(1))
  end
  it("returns a scrabble score for a word") do
    expect("coffee".scrabble()).to(eq(14))
  end

end
