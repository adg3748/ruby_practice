puts "借入額を入力してください"
borrow_money = gets.to_f
first_borrow_money=borrow_money
puts "月々の返済額を入力してください"
monthly_pay_money = gets.to_f
puts "年利を複利計算(%)で入力してください"
interest_rate = gets.to_f / 100 + 1
monthly_interest_rate = interest_rate**(1.0/12.0)

pay_month,pay_money,i = 0,0,0

while borrow_money > 0
  borrow_money -= monthly_pay_money
  borrow_money *= monthly_interest_rate
  pay_month += 1
  pay_money += monthly_pay_money
end

puts "ーーーーーーーーーーーーーーー"
puts "返済期間は#{pay_month/12}年#{pay_month%12}ヶ月、合計返済額は#{pay_money}円です"
puts "現在#{first_borrow_money}借りることで#{pay_money-first_borrow_money}円分以上増えるなら借りてもよし"


