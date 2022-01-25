(10..) １０以上を表す範囲
10..nil　でも宣言可能

(..10) 10以下を表す範囲　ruby2.7から使える
nil..10でもいける

numbers = [10, 20, 30, 40, 50]
numbers[2..] = [30,40,50]と、2番目からの要素を全て取得
配列の要素は0から始まるため・・・。

numbers[..1] = [10, 20]と、2番目までの範囲を取得

nil..nil
(nil..)
(..nil)

様々な繰り返し処理
.timesメソッド

sum = 0
5.times {|n| sum+=n}
= sum=10となる

.uptoメソッド 引数で指定したところまで一つずつ数を増やしながら処理を行うメソッド

a = []
10.upto(14) {|n| a << n}

a = [10, 11, 12, 13, 14]と、10が14になるまで１ずつ増やしながら配列に加える

.downtoメソッドはuptoの逆。引数で指定した数まで引いていく。





