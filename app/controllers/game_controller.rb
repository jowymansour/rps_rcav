class GameController < ApplicationController

  def rock
    computer_play
    @player_move = "Rock"

    if computer_play == "rock"
      @result = "tied"
    elsif computer_play == "Paper"
      @result = "won"
    else
      @result = "lost"
    end
  end

  def paper
    computer_play
    @player_move = "Paper"

    if computer_play == "rock"
      @result = "won"
    elsif computer_play == "Paper"
      @result = "tied"
    else
      @result = "lost"
    end
  end

  def scissors
    computer_play
    @player_move = "Scissors"

    if computer_play == "rock"
      @result = "lost"
    elsif computer_play == "Paper"
      @result = "won"
    else
      @result = "tied"
    end
  end

  private

  def computer_play
    case rand(1..3)
      when 1
        @computer_play = "Rock"
      when 2
        @computer_play = "Paper"
      when 3
        @computer_play = "Scissors"
    end
  end
end
