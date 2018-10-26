# ex 1-12
=begin
puts"HEllo World!"
puts "hello World!"
=end


#ex 1-16
=begin
name = gets()
print"Hello, #{name}" + "print"
printf("Hello, %s\n",name)
message = "Hello, %s" % name
puts message
$stderr.puts message
$stdout.puts message
=end


#ex1-17
=begin
def odd?(n)
  case n % 2
  when 0 then false
  when 1 then true
  else puts "error\n"
  end
end

while num = gets()
  unless /\A-?\d+\Z/ =~ num
   $stderr.puts "整数を入力してください"
   next
  end

  num = num.to_i
  if odd?(num)
    puts "#{num}は奇数"
  else
    puts "#{num}は偶数"
  end
end
=end


#ex1-18
=begin
(1..100).each do |i|
  case i % 15
  when 0  then puts "FizzBuzz"
  when 3, 6, 9, 12 then puts "Fizz"
  when 5, 10 then puts "Buzz"
  else puts i
  end
end
=end


#ex1-19
=begin
array = ["Bear", "Benford", "Egan"]
p array.map do |name|
  "G.#{name}"
end

hash = {"Baxter" => "Stephen", "Stross" => "Charles", "Reynolds" => "Alastair"}
hash.each do |key, value|
  puts "#{value} #{key}"
end
=end


#ex1-21
=begin
p 1.class
p 1.object_id
p 1.methods
p "str".class
a,b = "str", "str"
p a.methods
p a.object_id
p b.object_id
p a == b
p a.equal? b
=end


#ex1-22
=begin
p Integer.class
p Integer.ancestors
p 1.kind_of? Integer
p "str".kind_of? Integer
=end


#ex1-23
=begin
a,b = "str", "str"
def a.greet
  puts "I am the object #{self.object_id}"
end
a.greet
b.greet
=end


#ex1-24
=begin
p 1 << 2
p ["a", "b"] << "c"
$stdout << "hoge"
=end