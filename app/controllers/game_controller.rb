class GameController < ApplicationController

  def rock
    computer_play
  end

  def paper
    computer_play
  end

  def scissors
    computer_play
  end

  private

  def computer_play
    case @rand_num = rand(1..3)
      when 1
        @computer_play = "Rock"
      when 2
        @computer_play = "Paper"
      when 3
        @computer_play = "Scissors"
    end
  end

end
