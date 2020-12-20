require './method'
plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 }
]
# 旅行プランを表示
disp_plans(plans)
plan_num = select_plan
disp_plan(plans, plan_num)
numbers = input_group
calc_total_price(plans, numbers, plan_num)
