

＃.each_with_indexメソッド

fruits = ["apple","orange","melon"]
fruits.each_with_index {|fruit, i| puts "#{i}: #{fruit}"}

= 0: "apple"
  1: "orange"
  2: "melon"
と、繰り返し処理に添え字を付けてくれるようになる。

＃mapメソッドとwith_indexとの兼用

fruits = ["apple","orange","melon"]
fruits.map.with_index {|fruit, i| "#{i}: #{fruit}}

= [0: "apple", 1: "orange", 2: "melon"]
と、添え字が繰り返し処理について、かつ配列として返される
#with_indexメソッドはeach_with_indexと働きは同じ

＃delete_ifメソッドとwith_indexとの兼用

fruits = ["apple","orange","melon"]
fruits.delete_if.with_index {|fruit, i| fruit.include?("a") && i.odd?}
↑配列にaが含まれかつ添え字が奇数との時のみ、削除される

= ["apple", "melon"]

with_indexメソッドに引数を与えると、0からじゃなくその数値からスタートする
fruits = ["apple","orange","melon"]
fruits.map.with_index(1) {|fruit, i| "#{i}: #{fruit}"}
= [1: "apple", 2: "orange", 3: "melon"]

dimensions = [
  [10, 20],
  [30, 40],
  [50, 60]
]

dimensions.each_with_index do |length, width, i|
  puts "length: #{lengt}, width: #{width}, i:#{i}"
end
=
length:[10,20], width: 0, i:nil
length:[30, 40], width: 1, i:nil
length:[50, 60],  width: 2, i:nil

dimensions.each_with_index do |dimension, i|
  length = dimension[0]
  width = dimension[1]
  puts "length: #{lengt}, width: #{width}, i:#{i}"
end

dimensions = [
  [10, 20],
  [30, 40],
  [50, 60]
]

dimensions.each_with_index do |(length, width), i|
  puts "length: #{lengt}, width: #{width}, i:#{i}"
end

ブロックパラメーターを()で囲うことで、パラメーターの別々の要素として扱える

numbers = [1,2,3,4]
sum = 0

numbers.each do |n; sum|
  sum = 10
  sum += n
  puts sum
end

sum

= 11
  12
  13
  14

  0
と、n;と宣言することで、ブロックのみで有効なブロックローカル変数を宣言できる




