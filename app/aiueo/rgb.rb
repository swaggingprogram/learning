def to_hex(r, g, b)
  "#" +
  r.to_s(16).rjust(2,"0") +
  g.to_s(16).rjust(2,"0") +
  b.to_s(16).rjust(2,"0") +
end

def to_hex(r,g,b)
  hex = "#"
  [r,g,b].each do |n|
      n.to_s(16).rjust(2, "0")
  end
  hex
end

def to_hex(r,g,b)
  [r,g,b].sum("#") do |n|
    n.to_s(16).rjust(2, "0")
  end
end

def to_ints(hex)
  [0,0,0]
end

to_intsメソッドで実装したいこと
文字列から１６進数を２文字ずつ取り出す
２桁の１６進数を10進数に変換する

文字列から特定の範囲で抜きたい場合は範囲メソッドを使う
ex:2-4
s = "abcde"
s[1..3]
    
16進数を10進数にするには.hexメソッドを使う
"00".hex = 0

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  ints = []
  [r,g,b].each do |s|
    ints << s.hex
  end
  ints
end

配列に要素を加えるのは <<

mapメソッド