system "clear"

# This is a comment!
# print "Hello World!"
# puts "Hello World!".downcase
# puts "Hello World!".upcase
# puts "Hello World!".capitalize
# puts "Hello World!".reverse
# puts "Hello World!".length

# first_name = "Long"

# puts first_name

# New 1
# print "Enter Your Name: "
# # name = gets # chỉ có gets thì sẽ xuống dòng
# name = gets.chomp # chomp để khỏi bị xuống dòng khi in ra

# puts "Hello #{ name.upcase }, how are you?"

# New 2
# # puts 10 + 5
# # puts 10 % 3
# # puts 10.0 / 3

# # puts 10 + 5
# # num_1 = 10
# # num_2 = 5
# # puts num_1 + num_2

# print "Enter a number: "
# number = gets.to_i # to_i là làm thành int, to_f là float


# # puts number + 10 # như cái dưới
# puts "#{ number + 10 }"

# number.to_s # thành string

# New 3
# =begin rồi = end là comment
=begin
    ==
    !=
    >
    <
    >=
    <=
boolean
=end

# # # puts "john" == 'john' # true
# # puts "john" == 'John'# false
# puts "john" == 'John'.downcase # true

# New 4
=begin
    Assignment Operator
    =
    +=
    -=
    *=
    /=
    **=
    %=

=end

# age = 39

# puts age

# puts age += 1

# puts age

# New 5

# # print "Enter a number between 1 and 10: "
# # num = gets.to_i

# # if num > 10
# #     puts "Hey! I said between 1 and 10!"

# # elsif num > 5
# #     puts "#{num} is greater than 5"

# # elsif num == 5
# #     puts "#{num} is equal to 5"

# # else
# #     puts "#{num} is less than 5"
# # end

# print "Enter your name: "
# name = gets.chomp

# if name == "Long"
#     puts "Hello Long!"
# else
#     puts "I don't know you!"
# end

# New 6
# first_name = "Bob"

# nums = [1,2,3,4,5]

# names = ["Long", "John", "Mary", "Mikey", 39, first_name, nums, [1,2,3,4,5]]

# # puts names
# # puts names[0]
# # puts names.length
# # puts names[names.length - 1] # hoặc puts names[-1]
# # puts names[4] - 1

# # puts names[5]

# # puts names[6]
# puts names[6][2]

# New 7 - While loop

# num = 1

# while num < 10
#     puts num
#     # puts "I like you!"
#     num += 1
# end

# New 8 - Each loop

# (1..10).each do |num|
#     # puts num
#     puts "I love cheese!"
# end

## another example

# names = ["John", "Tim", "Mary"]

# names.each do |name|
#     puts name
# end

# New example - Hash

# names = ["John", "Tim", "Mary"]

# favorite_pizza = {
#     "John" => "Pepperoni",
#     "Tim" => "Mushroom",
#     "Mary" => "Cheese"
# }

# puts favorite_pizza["John"]

# New example - FizzBuzz

# (1..100).each do |num|
#     # puts num
#     if num % 3 == 0 && num % 5 == 0
#         puts "#{num}. FIZZBUZZ!"

#     elsif num % 3 == 0
#         puts "#{num}. FIZZ!"
#     elsif num % 5 == 0
#         puts "#{num}. BUZZ!"
#     else
#         puts "#{num}."
#     end
# end

# 21. Methods Part 1

# def hello(num)
#     puts "Hello there #{num + 10}"
# end


# hello(89)

# 22. Methods Part 2

# def hello(first_name, last_name)
#     return "Hello there #{ first_name } #{ last_name }"
# end

# f_name = "John"
# # puts hello(f_name, "Elder")

# method_output = hello(f_name, "Elder")
# puts method_output.upcase

# 24 + 25 + 26 + 27 + 28 + 29 + 30. Ruby Classes Part 1 (no 23)

class Square
    # attr_reader
    # attr_writer
    # attr_accessor :side_length, :area, :blabla # liệt kê nhiều
    attr_accessor :side_length
    def initialize(side_length)
        @side_length = side_length
    end

    # no need these comment lines because I have attr_accessor
    # def side_length
    #     return @side_length
    # end

    # def side_length=(side_length)
    #     @side_length = side_length
    # end

    def perimeter
        return "#{@side_length * 4}"
    end

    def area
        return @side_length * @side_length
    end

    def to_s
        return "Side Length: #{@side_length}\nPerimeter: #{perimeter}\nArea: #{area}"
    end

    def draw
        puts "*" * @side_length
        (@side_length - 2).times do
            print "*" + (" " * (@side_length-2)) + "*\n"
        end
        puts "*" * @side_length
    end

end

my_square = Square.new(5)

# # puts my_square
# # puts my_square.inspect
# puts my_square.side_length

# # my_square.side_length = 20

# # puts my_square.side_length

# puts my_square.perimeter
# puts my_square.area

# puts my_square

puts my_square.draw
