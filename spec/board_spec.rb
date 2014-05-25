require 'board'

describe Board do
  before :each do
    @board = Board.new(9)
  end

  it "gets empty squares" do
    expect(@board.get_squares).to eql('---------')
  end
  it "sets 2nd square to X" do
    @board.set_square(2, 'X')
    expect(@board.get_squares).to eql('-X-------')
  end
  it "checks if an square is empty and it is" do 
    expect(@board.is_square_empty(3)).to be_true 
  end
  it "checks if an square is empty and it is not" do
    @board.set_square(2, 'O')
    expect(@board.is_square_empty(2)).to be_false
  end
end
