# frozen_string_literal: true

require './player/player'
class Game
  def initialize
    # ゲームの設定をする
    @player_array = []
    @player_array << Player.new('あなた')
    @player_array << Dealer.new('ディーラー')

    game_progress
  end

  def game_progress
    loop do
      # ---- ここをループ
      puts 'ゲームを開始します'
      # カードクラス　カードを配る
      @player_array.each do |player|
        player.drow
        player.drow_message
      end
      # プレイヤーの人数分ターンを回す
      # 勝利判定
      # chipを管理する→チップがなければゲームオーバー終了
      # コンティニュー？→Noで終了
      game_continu
      # イニシャライズ
      # -----
    end
  end

  def select_winner
    # 勝者を決める
  end

  def game_continu
    # ゲームを続けるか決める
    puts 'ゲームを続けますか(Y/N)'
    continu = gets.chomp
    if %w[Y y].include?(continu)
      nil
    elsif %w[N n].include?(continu)
      game_exit
    end
  end

  def game_exit
    puts 'ブラックジャックを終了します。'
    exit
  end
end

Game.new
