.empty? :空かどうかを判定するメソッド


.include? :含まれるかどうかを判定するメソッド

.odd? :奇数かを判定

.even? :偶数かを判定

.nil? :nilかを判定

.upcase :大文字にする

.reverse :反転させる

!メソッドはメソッド外の変数の数値も変えるため、注意が必要

s = "ruby"
def reverse_upcase(s)
  s.reverse!
  s.upcase!
end

s = "YBUR"となるので注意！

pp putsで改行されないものを改行して出す