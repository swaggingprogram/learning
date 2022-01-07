rubyは全てがオブジェクト

オブジェクト.メソッド(引数)
オブジェクト.メソッド 引数といった感じで実行する

Rubyの区切りは基本的には改行で行われる
セミコロン(；)でも改行になる

文字列には””と’’の二つがあるが、基本的には好み

to_fメソッド　小数点を表示

10.to_f

1.to_f / 2 = 0.5にもできる

&& かつ　|| または　&&の方が||よりも優先される

変数の代入にifを入れることもできる

if day == 1
  point *= 5
end

point *= 5 if day == 1のように処理内容を先に置くこともできる

rubyにおいてメソッドの終わりにreturnをつけないのが一般的

"abc".class クラスメソッドでそれぞれの属性を調べることができる

&& || and or は同じだけど、優先度は左
真偽値は　s.empty? == trueとかくんじゃなくて
s.empty?で済ます。

falseを出したいなら!s.empty?とかく

!s = sの偽を出す
true自体を判定したい場合は　== trueとなる

メソッドの引数に戻り値を入れることも可能

def foo(time = Time.now, message = bar)
  message
end

def bar 
  "bar"
end

empty? include?は述語メソッドという

真偽値を判定するメソッドを作る場合は

def abc(n)
  if n % 3 == 0
    true
  else
    false
  end
end

とするんじゃなくて

def abc?(n)
  n % 3 == 0
end

とすると条件分岐がいらない

!メソッドは破壊的メソッドと呼ばれる

upcaseメソッドの場合

a = "ruby"
a.upcase = a = "ruby"となるが

a.upcase! = a ="RUBY"に変換されてしまう。
