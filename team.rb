class Team
    #変数定義
    attr_accessor :name, :win, :lose, :draw
    
    #初期化
    def initialize(name, win, lose, draw)
        self.name = name
        self.win = win
        self.lose = lose
        self.draw = draw
    end
    
    #勝率の計算メソッド
    def calc_win_rate
        self.win.to_f / (self.win + self.lose)
    end
    
    #表示用メソッド
    def show_team_result
        puts "#{self.name} の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw} 分、勝率は #{self.calc_win_rate}です。"
    end
end

#6チーム分インスタンス生成
team_1 = Team.new('Giants', 67, 45, 8)
team_2 = Team.new('Tigers', 60, 53, 7)
team_3 = Team.new('Dragons', 60, 55, 5)
team_4 = Team.new('BayStars', 56, 58, 6)
team_5 = Team.new('Carp', 52, 56, 12)
team_6 = Team.new('Swallows', 41, 69, 10)

#show_team_resultを呼び出して表示する
team_1.show_team_result
team_2.show_team_result
team_3.show_team_result
team_4.show_team_result
team_5.show_team_result
team_6.show_team_result
