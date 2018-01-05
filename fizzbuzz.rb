def fizzbuzz(input)
  input = input.to_i
  if input!=0
    if (input%3==0) && (input%5==0)
      puts 'fizzbuzz'
    elsif input%3==0
      puts 'fizz'
    elsif input%5==0
      puts 'buzz'
    else
      puts input
    end
  else
    puts input
  end
end

while true do
  puts "任意の整数を入力してください"
  input = gets.chomp
  if input =~ /^[0-9]+$/ 
    # ^先頭を直後の文字で検索
    # []括弧のいずれか
    # +1つ以上直前の文字が続く
    # $末尾を直前の文字で検索
    fizzbuzz(input)
    break
  else
    puts '不正な値です。もう一度入力してください。'
  end
end

