def fizzbuzz(argv)
  input = argv[2].to_i
  if input!=0
    # \wは英単語を構成する文字(a~z,A~Z,_,1~9)
    # ０-９は全角数字の正規表現
    # 亜-熙ぁ-んァ-ヶは日本語全般の正規表現
    if (input%3==0) && (input%5==0)
      puts "#{argv[0].slice(/[\w０-９亜-熙ぁ-んァ-ヶ]+$/)}#{argv[1].slice(/[\w０-９\d亜-熙ぁ-んァ-ヶ]+$/)}"
    elsif input%3==0
      puts "#{argv[0].slice(/[\w０-９\d亜-熙ぁ-んァ-ヶ]+$/)}"
    elsif input%5==0
      puts "#{argv[0].slice(/[\w０-９\d亜-熙ぁ-んァ-ヶ]+$/)}"
    else
      puts input
    end
  else
    puts input
  end
end

while true do
  if ARGV[2] =~ /^[0-9]+$/ 
    # =~は正規表現とのパターンマッチを確認し、マッチしたらマッチした部分の位置を整数で返し、マッチしなければnilを返す演算子
    # ^先頭を直後の文字で検索
    # []括弧のいずれか
    # +1つ以上直前の文字が続く
    # $末尾を直前の文字で検索
    fizzbuzz(ARGV)
    break
  else
    puts '不正な値です。'
    break
  end
end

