# Ruby Intro Answer Sheet

## Check your ruby version
Your ruby version: ruby 2.6.0p0 (2018-12-25 revision 66547) [x86_64-linux

## Floats and integers 
1. 3.0 / 2
    1. Expected (integer or float): float
    2. Actual (integer or float): float
    3. Answer: 1.5
2. 3 / 2.0
    1. Expected (integer or float): float
    2. Actual (integer or float): float
    3. Answer: 1.5
3. 4 ** 2.0
    1. Expected (integer or float): float
    2. Actual (integer or float): float
    3. Answer: 16.0
4. 4.1 % 2
    1. Expected (integer or float): float
    2. Actual (integer or float): float
    3. Answer: 0.09...

## Strings
1. "tom" * 3
    * Expected: "tom tom tom"       
    * Actual: "tomtomtom"
2. "tom" + "tom"
    * Expected: "tomtom"        
    * Actual: "tomtom"
3. "tom" + 1
    * Expected: "tom1"
    * Actual: TypeError (no implicit conversion of Integer into String)
4. "tom" / 2
    * Expected: Some kind of error          
    * Actual: NoMethodError (undefined method `/' for "tom":String)

## Calculations in IRB
1. How many hours are in a year?
    * Answer: 8760 in a normal year, 8784 in a leap year
2. How many minutes are in a decade?
    * Answer: 87648
3. How many seconds old are you?
    * Answer: 635699385


## IRB Log

<!--

irb(main):005:0> 3.0 / 2
=> 1.5
irb(main):006:0> 3 / 2.0
=> 1.5
irb(main):007:0> 4 ** 2.0
=> 16.0
irb(main):008:0> 4.1 % 2
=> 0.09999999999999964
irb(main):009:0> "tom" * 3
=> "tomtomtom"
irb(main):010:0> "tom" + "tom"
=> "tomtom"
irb(main):011:0> "tom" + 1
Traceback (most recent call last):
        5: from /usr/share/rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        4: from /usr/share/rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        3: from /usr/share/rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        2: from (irb):11
        1: from (irb):11:in `+'
TypeError (no implicit conversion of Integer into String)
irb(main):012:0> "tom" + 1
Traceback (most recent call last):
        6: from /usr/share/rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        5: from /usr/share/rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        4: from /usr/share/rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        3: from (irb):12
        2: from (irb):12:in `rescue in irb_binding'
        1: from (irb):12:in `+'
TypeError (no implicit conversion of Integer into String)
irb(main):013:0> "tom" / 2
Traceback (most recent call last):
        5: from /usr/share/rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        4: from /usr/share/rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        3: from /usr/share/rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        2: from (irb):13
        1: from (irb):13:in `rescue in irb_binding'
NoMethodError (undefined method `/' for "tom":String)
irb(main):014:0> 24 * 365
=> 8760
irb(main):015:0> 8760 + 24
=> 8784
irb(main):016:0> 8760 * 8
=> 70080
irb(main):017:0> 8784 * 2
=> 17568
irb(main):018:0> 70080 + 17568
=> 87648
irb(main):019:0> 87648 * 60
=> 5258880
irb(main):020:0> Time.new(1999, 02, 08)
Traceback (most recent call last):
        3: from /usr/share/rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        2: from /usr/share/rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        1: from /usr/share/rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
SyntaxError ((irb):20: Invalid octal digit)
Time.new(1999, 02, 08)
                   ^~
irb(main):021:0> Time.new(1999, 2, 8)
=> 1999-02-08 00:00:00 +1000
irb(main):022:0> Time.new(1999, 2, 8).to_i
=> 918396000
irb(main):023:0> Time.new
=> 2019-04-01 15:09:39 +1000
irb(main):024:0> Time.new.to_i
=> 1554095385
irb(main):025:0> 1554095385-918396000
=> 635699385
irb(main):026:0> 635699385 / 60 / 60 / 24 / 365
=> 20
irb(main):027:0> 635699385.to_f / 60 / 60 / 24 / 365
=> 20.15789526255708

-->