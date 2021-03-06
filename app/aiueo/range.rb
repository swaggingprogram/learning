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

無限ループ　loop
loop do
  処理内容
end
loop do 
  sum +=1
end

無限ループを抜けたい場合は、条件をつけてbreakと宣言
sum = 0
loop do
  sum +=1
  break if sum == 5
end

メソッドの中でメソッドをもう一度呼び出すことを、再帰呼び出しという
def factorial(n)
  n > 0? n * factorial(n - 1):1
end

#break next redo 
break 繰り返し処理を脱出する
numbers = [1,2,3,4,5].shuffle:配列の要素をランダムで入れ替えるメソッド
numbers.each do |n|
  puts n
  break if n == 5
end

whileやforでもbreakは使える
繰り返し処理が入れ子になっている場合は、内側の繰り返しを終わらせる

#throw catch
基本形
catch タグ　do
  #繰り返し処理など
  throw タグ
end
※タグはシンボル　:

fruits = ["apple", "melon", "orange"]
numbers = [1,2,3]
catch :done do
  fruis.shuffle.each do |fruit| 
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == "orange" && n == 3
        throw :done #全ての繰り返し処理を脱出する
      end
    end
  end
end

配列fruitsをシャッフルして繰り返し処理
配列numbersをシャッフルして繰り返し処理
fruitとnを出力
fruitとnが指定の条件になったら、全ての処理をストップ

catch throwを使うことによって、纏めてすべての繰り返し処理を止めることができる

catchとthrowのタグは一致しないとエラーが出る

breakとreturnの違い
break: 繰り返し処理のみからの脱出
return: メソッドの処理からの脱出

returnが入ると、メソッド自体が終わる

#next
numbers = [1,2,3,4]
numbers.each do |n|
  next if n.even?
  puts n
end

numbers = [1,2,3,4,5]
i = 0
while i < numbers.size
  n = numbers[i]
  i += 1
  next if n.even?
  puts n
end

nextは条件を満たすときのみ、次の処理に移るメソッド

#redo
繰り返し処理をやり直したいときに使うメソッド

foods = ["apple", "banana","melon"]
foods.each do |food|
  print "#{food}は好き？"
  answer = ["yes", "no"].sample 
  puts answer

  redo unless answer == "yes"
end

yesが出力されないと繰り返し処理がやり直される

foods = ["apple", "banana","melon"]
count = 0
foods.each do |food|
  answer = "no"
  puts answer

  count += 1

  redo if answer != "yes" && count < 2
  count = 0
end

redoに回数制限をつけることもできる



