require_relative '../lib/game.rb'


describe "Game" do 

  before { @game = Game.new }

  subject { @game }

  it { should respond_to("board") }
  it { should respond_to("players") }
  it { should respond_to("add_player") }
  it { should respond_to("update_board") }

  describe "players" do
    
    describe "it should allow adding players to the game" do
      before do 
        @game.add_player('X')
        @game.add_player('O')
      end
     
      subject { @game.players }

      it { should have(2).items }
    end
  end

  describe "it should allow updating" do
    before do
      move = { 'X' => 5 } 
      @game.update_board(move)
    end

    its("board[2,2]") { should eq('X') }

  end


end