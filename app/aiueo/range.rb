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

.stepメソッドは増やす数値もいじれるupto　or downtoメソッド

a = []
1.step(10,2) {|n| a << n}
a = [1, 3, 5, 7, 9]

10.step(1, -2) {|n| a << n}
a = [10, 8 ,6 ,4, 2] 

.whileメソッド　指定した条件が真である限り繰り返す
a = []
while a.size < 5
  a << 1
end

aの大きさが5になるまで配列に１を加える

a = []
a << 1 while a.size < 5と一行で書くことも可能

untilは　whileの逆で、偽である限り繰り返しを行う処理
a = [10, 20, 30, 40, 50]
until a.size <= 3
  a.delete_at(-1)
end

= a =[10, 20, 30]
aの大きさが３になるまで配列の末尾から引いていく

.delete_at(-1) 配列の一番最後を削除する

for文
numbers = [1,2,3,4]
sum = 0
for n in numbers
  sum += n
end
sum

配列の要素をsumに足していく

sum = 0
for n in numbers do sum +=n end
sum
と、一行で書くことも可能 
