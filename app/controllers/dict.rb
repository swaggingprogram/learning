#メソッド辞典

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
= new_numbers = {10,20,30,40,50}  :numbersを10倍にする

.selectメソッド　配列の要素が条件に対して真になるときに戻り値を配列に格納してくれる
numbers = [1,2,3,4,5]

even_numbers = numbers.select {|n| n.even?}
=even_numbers = [2,4] :numbersが偶数の時だけ配列に入る

