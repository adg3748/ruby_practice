# 入力された時刻が範囲に含まれるかどうかを判定するプログラム
# 日付を跨いで指定を受けた場合でも動作するように実装

def judge(time,range_a,range_b)
  if range_a == range_b
    if range_a == time
      puts "範囲に含まれます"
    else
      puts "範囲に含まれません"
    end
  else
    if range_a <= time && time < range_b
      puts "範囲に含まれます"
    else
      puts "範囲に含まれません"
    end
  end
end

puts "調べたい時刻を入力してください"
time = gets.to_i
puts "調べたい時間の範囲の始まりの時刻を入力してください"
range_a = gets.to_i
puts "調べたい時間の範囲の終わりの時刻を入力してください"
range_b = gets.to_i

if range_a <= range_b
  judge(time,range_a,range_b)
else
  time = "#{time + 24}".to_i
  range_b = "#{range_b + 24}".to_i
  judge(time,range_a,range_b)
end

