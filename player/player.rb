class Player
  def initialize(name)
    @name = name
    @hand = []
  end

  # デッキからカードを引いて配列に入れる

end

class User < Player
  def initialize
    @bet = 0
    @chip = 20000
  end
end

class Cpu < Player
  def cpu_move
  end
end

class Dealer < Cpu
  
end
