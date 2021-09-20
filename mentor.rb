# Mentorクラス（設計図）
class Mentor
  attr_accessor :name

  # インスタンスを初期化するメソッド　initialize（名前）   
  def initialize(name)
    self.name = name
  end
  
  # インスタンスメソッド・・・仕事を紹介する
  def job
    puts "#{self.name}です。私は現役のITプロフェッショナルです。"
  end
end

# RailsMentorクラス（設計図）・・・Mentorクラスの継承
class RailsMentor < Mentor
  attr_accessor :name

  # jobメソッドのオーバーライド
  def job
    puts "#{self.name}です。私はRubyとRailsでWebアプリケーションを作ります。"
  end
end
  
# インスタンスの生成
kirameki = Mentor.new("煌木")
akaide = RailsMentor.new("赤出")
  
# jobの呼び出し
kirameki.job
akaide.job