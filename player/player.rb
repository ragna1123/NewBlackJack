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
    if self.class == Player || @hand.length <= 1 || @hand.length >= 3
      puts "#{@name}は#{@hand.last[0]}の#{@hand.last[1]}を引きました"
    elsif self.class == Dealer || Cpu
      puts "#{@name}の引いた２枚目のカードは分かりません"
    end
  end

  # 手持ち札の計算をする
  def sum_hand_pint
    point_array = @hand.map{|card|card[1]} 
    # ここに配列の合計値を正しJQKは10ポイントにする
  end
end

class Player < User
  def player_next_hand?
    puts "あなたの現在の得点は#{}です。カードを引きますか？（Y/N）"
    next_hand = gets.chomp
    if %w[Y y].include?(next_hand)
      true
    elsif %w[N n].include?(next_hand)
      false
    else
      player_next_hand?
    end
  end
end

class Cpu < User
  # CPUの挙動
  def cpu_next_hand?
    if @own_point <= 16
      true
    elsif @own_point >= 17
      false
    end
  end
end

# player = Player.new("haga")
# player.drow
# player.drow
# player.drow
# player.drow
# player.drow

# p player.sum_hand_pint

class Dealer < Cpu

end
