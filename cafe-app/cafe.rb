# This challenge has three parts. Use all you have learned to
# implement the solution. Use methods to keep your code DRY and
# clean. Use data structures that are appropriate.
# Make notes for anything you are unsure about.

# Part 1
# You are working at a cafe where you have a current backlog of orders:

# Write a program that asks the customer for their order. The customer
# will only order one item.
#   if they order a latte, add one to the number of lattes you need to make,
#   if they order a scone, add one to the number of scones you need to serve,
#   if they order a tea, add one to the number of teas you need to make

require "date"
require "io/console"

require_relative "./classes/Customer"
require_relative "./classes/MenuItem"
require_relative "./classes/Order"
require_relative "./classes/Cashier.rb"

require "yaml"

@class_customers = YAML.load(File.read("./storage/customers.yml"))
@class_menu = YAML.load(File.read("./storage/menu.yml"))
@cashier = YAML.load(File.read("./storage/cashiers.yml"))[0]

# 6 lattes
# 2 scones
# and
# 3 teas

def add_customer
  puts "Please complete their details."
  print "Email: "; customer_email = gets.strip.downcase
  print "First Name: "; first_name = gets.strip.capitalize
  print "Last Name: "; last_name = gets.strip.capitalize
  print "D.O.B (dd/mm/yy) "; date_of_birth = gets.strip
  return Customer.new(first_name, last_name, date_of_birth, customer_email)
end

def order_menu()
  customer = nil

  until customer != nil
    p customer
    # system "clear"
    puts "--CUSTOMER--"
    puts "Press (b) to restart at any time"
    print "Does your customer have an account? (Y/N) "
    if (gets.strip.upcase == "Y")
      print "Please enter their email address: "; customer_email = gets.strip.downcase
      customer_index = @class_customers.find_index { |customer| customer.email == customer_email }
      if (customer_index)
        customer = @class_customers[customer_index]
      else
        puts "That customer does not exist!"
        puts "Would you like to create them an account, or try again?"
      end
    else
      print "Do they want to register? (Y/N) "
      if (gets.strip.upcase == "Y")
        customer = add_customer
        @class_customers.push(customer)
      else
        customer = Customer.new("default", "default", "01/01/1900", "default@default.default")
        customer_email = customer.email
      end
    end
  end

  order_completed = false
  order_items = []

  until order_completed
    # system "clear"
    puts "--ORDER--"
    puts "(Press M to view the menu and F to finish order.)"
    print "What would you like to order? Please enter the item number: "; order_input = gets.strip
    item_id = order_input.to_i
    if (order_input == "M")
      puts "#{"ID".center(20)}|#{"Name".center(20)}|#{"Price".center(20)}"
      @class_menu.each { |menu_item| puts menu_item.menu_display }
      # If input is a string, it will parse to 0 and therefore be falsey. It will parse to a positive integer and therefore be truthy otherwise.
    elsif (order_input == "F")
      order_completed = true
    elsif (item_id >= 1)
      order_item = @class_menu.find { |item| item.id == item_id }
      print "How many #{order_item.name}: "
      item_qty = gets.strip.to_i
      order_items.push({
        :name => order_item.name,
        :qty => item_qty,
      })
    end
  end

  complete_order = Order.new(@orders.length + 1, order_items, customer_email)
  @cashiers.push(complete_order)
  puts complete_order
end

puts "Please enter your cashier number."

loop do
  puts "Welcome to Louis' Warm Brewies!
1. Order
2. History
3. Exit"
  print "Selection: "; menu_selection = gets.strip.downcase

  if (menu_selection == "1" or menu_selection == "order")
    order_menu
  elsif (menu_selection == "2" or menu_selection == "history")
    puts "History"
  elsif (menu_selection == "3" or menu_selection == "exit")
    puts "Thanks, Bye!"
    break
  else
    puts "That was not a valid selection! Please try again."
  end
end

# Print the final order so you know what to make.

# Part 2
# Lattes sell for $4, and cost $2 to make
# Scones sell for $5, and cost $3 to make
# Tea sells for $3, and cost $0.50 to make

# Print out the total profit for the orders you have.

# Part 3
# Write a program that asks the user for their order.
# Allow the user to input mutiple items and to specify quantities.
# When the order is complete:
#   Print the order
#   Print the total price

# Example:
# What would you like to order (latte, scone, tea)? Type (q)uit to quit.
# latte
# How many?
# 2
# Anything else? Type (q)uit to quit.
# tea
# How many?
# 1
# Anything else? Type (q)uit to quit.
# coffee
# I'm sorry, we don't serve that. Would you like latte, scone, or tea? Type (q)uit to quit.
# q
# Thank you! Your order:
# 2 latte
# 1 tea
# Order total: $11.00
