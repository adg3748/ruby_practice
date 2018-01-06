# コマンドライン引数で渡されたファイルを読み込んで表示する
# linuxコマンドのcatでできることをrubyで定義している感じ
f = open(ARGV[0])
p ARGV # ["引数に取ったファイル名"]
p ARGV.class # => Array
p f # => #<File:fizzbuzz.rb> 返値はFileオブジェクト
while line = f.gets
  print line
end
f.close
