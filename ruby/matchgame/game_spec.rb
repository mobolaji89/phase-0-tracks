require_relative 'game'

describe GuessGame do
  let(:game) { GuessGame.new }
  
  it "has a readable loop exit" do
    expect(game.is_over).to eq false
  end
  
  it "It has writable guess count" do
    game.guess_max = 10
    expect(game.guess_max).to eq 10
  end
  
end