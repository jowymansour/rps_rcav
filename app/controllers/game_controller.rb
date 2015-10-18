class GameController < ApplicationController

  def rock
    @player_move = "Rock"

    case computer_play
      when "Rock"
        @result = "tied"
      when "Paper"
        @result = "lost"
      when "Scissors"
        @result = "won"
    end

    result_label(@result)
  end

  def paper
    @player_move = "Paper"

    case computer_play
      when "Rock"
        @result = "won"
      when "Paper"
        @result = "tied"
      when "Scissors"
        @result = "lost"
    end

    result_label(@result)
  end

  def scissors
    @player_move = "Scissors"

    case computer_play
      when "Rock"
        @result = "lost"
      when "Paper"
        @result = "won"
      when "Scissors"
        @result = "tied"
    end

    result_label(@result)
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

  def result_label(result)
    case result
      when "won"
        @result_label = "label-success"
      when "lost"
        @result_label = "label-danger"
      when "tied"
        @result_label = "label-warning"
    end
  end
end
