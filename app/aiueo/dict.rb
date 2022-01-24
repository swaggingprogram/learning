#メソッド辞典

.to_sメソッド　基本的には対象を10進数文字列に変換するメソッド
.to_s(2)
.to_s(8)
.to_s(16)
.to_s(32) と、引数を指定するとそれに応じた進数に変換される

.sum("#") 引数を文字列にしているすると、引数にオブジェクトを足すようになる

.hex  16進数文字列を10進数に変換
"00".hex = 0

.empty? :空かどうかを判定するメソッド

.include? :含まれるかどうかを判定するメソッド

.odd? :奇数かを判定

.even? :偶数かを判定

.nil? :nilかを判定

.upcase :大文字にする

.reverse :反転させる

.capitalize :最初の1文字を大文字にするメソッド

.to_hex :10進数を16進数に変えるメソッド
to_hex(0, 0, 0) = "#000000"

.to_ints :16進数を10進数にするメソッド
to_ints("#ffffff") = [255, 255, 255]

a.delete_at(1) メソッド 指定した番号の配列の要素を消す

!メソッドはメソッド外の変数の数値も変えるため、注意が必要

"0".rjustメソッド
"0".rjust(5)    = "    0"
"0".rjust(5, "0") = "00000"
"0".rjust(5, "_") = "____0"

オブジェクトを右詰めにするメソッド　第一引数が文字列の最小の長さを決める。第二引数がwidthになるまでのpadding(隙間)に詰める文字列である
ex: "foo".rjust(10) = 最小の文字列は10となり、"       foo"になる
    "foo".rjust(10, "#") = 最小の文字列は10で、"#######foo"になる

s = "ruby"
def reverse_upcase(s)
  s.reverse!
  s.upcase!
end

s = "YBUR"となるので注意！
---------------------------------------------------------------------------------------------------------------------------------------------
#テストコード minitest
pp putsで改行されないものを改行して出す

require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    assert_equal "RUBY", "ruby".upcase
  end
end

require 'minitest/autorun'
minitestを呼び出す宣言

class SampleTest < Minitest::Test
end
Minitest::Testクラスから継承したクラスであることを宣言

def test_sample
  assert_equal "RUBY", "ruby".upcase
end
test_sample minitestはtest_を含むメソッドを調べている

assert_equalメソッド (assert_equal, b, a)
aの実行結果がbとなることを調べるメソッド

assert a 
aが真であることを調べるメソッド

refuse a
aが偽であることを調べるメソッド

require_relative
自作のプログラムを別のプログラムで読み込むためのもの
ひとつ上のディレクトリに存在するときは
require_relative '../bar/bye'
同じディレクトリに存在するときは
require_relative 'bye'
と宣言
---------------------------------------------------------------------------------------------------------------------------------------------
#配列について
配列= [] a = [1,2,3] a[0] = 1

a << 1 配列aに数値を挿入する

a.delete_at(1) メソッド 指定した番号の配列の要素を消す

a,b = 1,2 aとbにそれぞれの数値を代入することができる
a,b = [1,2]だと a = [1] b = [2]の配列ができる

.divmod() メソッド　オブジェクトの商と余りを配列として返す
14.divmod(3) = [4,2] 14 / 3 = 4 + 2

a, b = 14.divmod(3)にすると a= [4] b= [2]になる

.delete() 引数に一致するものを削除する

.delete_if ブロックに一致するものを削除する

a = [1,2,3,4,5]
a.delete_if do |n|
  n.odd?  奇数なら削除
end

eachの do endと{}

a.each do |n|
  puts n
end

a.each { |n| puts n}：簡単にすることも可能
---------------------------------------------------------------------------------------------------------------------------------------------
##配列で使うメソッドまとめ
.mapメソッド　対象の配列の戻り値を入れるとして返してくれる
numbers = [1,2,3,4,5]
new_numbers = numbers.map {|n| n*10}
= new_numbers = [10,20,30,40,50]  :numbersを10倍にする

.selectメソッド　配列の要素が条件に対して真になるときに戻り値を配列に格納してくれる
numbers = [1,2,3,4,5]

even_numbers = numbers.select {|n| n.even?}
=even_numbers = [2,4] :numbersが偶数の時だけ配列に入る

.rejectメソッド　selectの逆。条件式の条件に当てはまらないものが
配列として返される

ex numbers = [1,2,3,4,5]
reject_numbers = numbers.reject {|n| n % 3 == 0}
= reject_numbers= [1,2,4,5]

.findメソッド
配列の要素内で最初に真になったものを返す

ex numbers = [1,2,3,4,5]
even_numbers.find {|n| n.even?}
even_numbers = 2

※detectでも同じことが可能

.sum 配列の合計
ex numbers = [1,2,3,4,5]
numbers.sum {|n| n*2} とすれば配列の要素を2倍にしながら
合計を出してくれる

numbers.sum(5): 初期値を0じゃなくて5にしてくれる

.joinメソッド　文字列を結合してくれる
.join('-')にすると、要素の間にーを追加して結合してくれる

範囲オブジェクト　range
(1..5) 1から5までを含む
(1...5) 最後の5は含まない　1〜4まで

ex rainge = 1..5
range.include?(0) = false
range.include?(4.9) = true
(1..5).include?(4) = rangeオブジェクトをメソッドにかける場合は()をつける

・配列を取り出す場合
a = [1,2,3,4,5]
a[1..3] = 2,3,4が取り出される

rangeはcaseメソッドでも使える
def charge(age)
  case age
  when 0..5
    0
  when 6..12
    300
  else
    1000
  end
end

(1..5).to_a をつかうと連続した配列を作成できる
=[1,2,3,4,5]

配列[位置]
配列[位置、取得する長さ]と、添え字を２つにすることでを指定できる

a = [1,2,3,4,5]

a[1] = 2
a[1,3] = 2,3,4

a.value_at(0,2,4) = [1,3,5]
.value_atメソッド 取得したい要素を添え字で指定できるメソッド

a[-1] = 5 要素の最後を取得する
a[-2] = 4 要素の最後から２番目を取得する
a[-2, 2] = [3,4] 要素の最後から２番目をスタートとし、そこから２つの要素を取得

a.last = 5
.lastメソッド　最後の要素を取得する
a.last(2)とすると、最後のn個の要素を取得する 今回は２個

a.firstもある

a[-1] = 10と、配列の要素の変更にマイナスの数字を使うこともできる

a[1,3] = 100と、aの２番目から３要素分を100に置き換えることもできる

b = []
b.push(1)
b.push(2,3)

b = [1,2,3]となる

.pushメソッド　配列に要素を追加するメソッド <<と同じ

a.delete(1) 引数で指定した数値を配列から消すメソッド 返り値は抜いた配列

a = [1]
b = [2,3]

a.concat(b) 配列aにbを結合させるメソッド

a + bでもいける

和集合　差集合　積集合　| - &

a = [1,2,3]
b = [3,4,5]

a | b [1,2,3,4,5] a または b
a - b [1,2] a - b
a & b [3] a かつ b

setモジュール 
require 'set'
a = Set[1,2,3]
b = Set[3,4,5]　で宣言できる

本格的な集合を扱うにはこっちの方が便利

可変長引数　ex: *names
def greet(*names)
  "#{names.join("と")}、こんにちは"
end

greet("田中")
greet("田中","鈴木")
greet("田中","鈴木","斎藤")　と、引数を無制限で指定できる