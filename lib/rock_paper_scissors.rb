class RockPaperScissors
  class NoSuchStrategyError < StandardError ; end

  def self.get_winner(player1,player2)
    player1_choice = player1[1].upcase
    player2_choice = player2[1].upcase

    case player1_choice

      when 'R'
        if player2_choice == 'R'
          player1
        else if player2_choice == 'S'
          player1
        else 
          player2
        end
      end
      when 'S'
        if player2_choice == 'S'
          player1
        else if player2_choice == 'P'
          player1
        else 
          player2
        end
      end
      when 'P'
        if player2_choice == 'P'
          player1
        else if player2_choice == 'S'
          player2
        else
          player2
        end
      end
    end
  end

  def self.winner(player)
    strategy = ['R','S','P']
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" unless 
      strategy.include? player[0][1].upcase
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" unless 
      strategy.include? player[1][1].upcase

    get_winner(player[0], player[1])
  end

  def self.tournament_winner(tournament)
    if tournament[0][0].class == String
      return winner(tournament)
    end
    
    return winner([tournament_winner(tournament[0]),tournament_winner(tournament[1])])

  end
end