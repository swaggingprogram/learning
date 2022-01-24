

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