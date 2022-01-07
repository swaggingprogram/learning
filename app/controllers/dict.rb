.empty? :空かどうかを判定するメソッド


.include? :含まれるかどうかを判定するメソッド

.odd? :奇数かを判定

.even? :偶数かを判定

.nil? :nilかを判定

.upcase :大文字にする

.reverse :反転させる

.capitalize :最初の1文字を大文字にするメソッド

!メソッドはメソッド外の変数の数値も変えるため、注意が必要

s = "ruby"
def reverse_upcase(s)
  s.reverse!
  s.upcase!
end

s = "YBUR"となるので注意！

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


