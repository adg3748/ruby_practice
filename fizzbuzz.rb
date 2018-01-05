while true
  puts "任意整数を入力してください"
  input = gets.chomp
  p input
  if input =~ /^[0-9]+$/ 
    # ^先頭を直後の文字で検索
    # []括弧のいずれか
    # +1つ以上直前の文字が続く
    # $末尾を直前の文字で検索
    puts '正常な値です'
  else
    puts 'もう一度入力してください'
  end
end

# def fizzbuzz(input)
#   while true do
#     if (input%3==0) && (input%5==0)
#       puts fizzbuzz
#       break
#     elsif input%3==0
#       puts fizz
#       break
#     elsif input%5==0
#       puts fizzbuzz
#       break
#     else
#       puts "不正な値です。もう一度入力してください"
#     end
#   end
# end
# fizzbuzz(input)




