require './card/deck'
# attr_accessor :hand

class User
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
  def drow_message
    puts "#{@name}は#{@hand}を引きました"
  end
end

class Player < User
  # chipの持ち点とベット
  # ユーザーの手持ちが２枚の時に引く処理
  # メッセージ
end

class Cpu < User
  def cpu_move
  end
  # CPUのメッセージ処理
end

Player.new("haga")

class Dealer < Cpu

end
