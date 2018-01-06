p ARGV # コマンドライン引数は配列で渡される

ARGV.each_with_index do |argv, i|
  md = argv.to_s.match(/3:(\w+)/) # 3:hogeに一致するものを検索、返値はMatchDataクラス
  p "#{i+1}:#{md}" # 何番目かを指定しなければ自ずとmd[0]が出力される
  p md # => #<MatchData "3:hoge>
  p md.class # => MatchData
  puts md # MatchDataクラスをputsで出力すると、標準出力にはmd[0]が文字列で表示される
  p md[0] # => 3:hoge
  p md[1] # => hoge 3:の後ろの値が出力される
end
