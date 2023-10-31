require './card/deck'
attr_reader :hand

class Player
  def initialize(name)
    @name = name
    @hand = []
    @deck = Deck.new
    hand = @hand
  end

  def drow
    # 一番上から取得して@handへ渡す破壊的処理
    deck = @deck.deck
    @hand << deck.first
    deck.delete(deck[0])
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

Player.new("haga")

class Dealer < Cpu

end
