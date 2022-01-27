hash: {}

currencies = {"japan" => "yen", "us" => "dollar", "india" => "rupee"}
currencies["italy"] = "euro" :ハッシュにキーと要素を追加する

currencies["japan"] = "円":ハッシュの上書き

ハッシュの値を呼び出す：currencies["us"] = "dollar"

currencies = {"japan" => "yen", "us" => "dollar", "india" => "rupee"}
currencies.each do |key, value|
  puts "#{key},#{value}"
end

ハッシュに繰り返し処理をかけるときは、キーとバリュー用の変数が必要


パラメーターを１つにすると、キーと値が配列になってしまう
currencies = {"japan" => "yen", "us" => "dollar", "india" => "rupee"}
currencies.each do |key_value|
  key = key_value[0]
  value = key_value[1]
  puts "#{key},#{value}"
end
#"japan" => "yen" 0と１に格納される