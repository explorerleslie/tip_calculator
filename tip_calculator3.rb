puts "What was the total price of your meal?"
meal = gets.chomp.to_f
puts "What is the local tax rate?"
tax = gets.chomp.to_f 
puts "How much would you like to tip?"
tip = gets.chomp.to_f

def percentage_of_value(value, percentage)
    return value * (percentage / 100)
 end

tax_value = percentage_of_value(meal, tax)
meal_with_tax = meal + tax_value
tip_value = percentage_of_value(meal, tip)
total_cost = meal_with_tax + tip_value

puts "The pre-tax cost of your meal was $#{meal}."
puts "At $#{tax}%, tax for this meal is $#{tax_value.round(2)}."
puts "For a #{tip}% tip, you should leave $#{tip_value.round(2)}."
puts "The grand total for this meal is $#{total_cost.round(2)}."