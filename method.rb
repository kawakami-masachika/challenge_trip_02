DISCOUNT_GROUP = 5
DISCOUNTS_RATE = 0.1
AFTER_DISCOUNT_RATE = 1 - DISCOUNTS_RATE

def disp_plans(plans)
  puts "旅行プランを選択して下さい。"
  plans.each.with_index(1) do |plan, index|
    puts "#{index}. #{plan[:place]}(#{plan[:price]}円)"
  end
end

def select_plan
  while true do
    print "プランの番号を選択 > "
    # プランの選択
    plan_num = gets.to_i
    break if (1..3).include?(plan_num)
    puts "1~3の番号を入力して下さい。"
  end
  plan_num
end

def disp_plan(plans, plan_num)
  puts "#{plans[plan_num - 1][:place]}旅行ですね"
end

def input_group
  puts "何名で予約されますか？"
  while true do
    print "人数を入力 > "
    # 人数の入力
    numbers = gets.to_i
    break if numbers > 0
    puts "1以上を入力して下さい。"
  end
  puts "#{numbers}名ですね"
  numbers
end

# トータル金額の計算
def calc_total_price(plans, numbers, plan_num)
  total_price = plans[plan_num -1][:price] * numbers
  if numbers >= DISCOUNT_GROUP
    total_price = calc_discount(total_price, numbers)
  end
  puts "合計料金は#{total_price.floor}円になります。"
end

# 割引の計算
def calc_discount(total_price, numbers)
  puts "#{numbers}名ですので#{(DISCOUNTS_RATE * 100).floor}%割引となります"
  total_price *= AFTER_DISCOUNT_RATE
end