#ex3-2
=begin
p 0xDEADBEEF
p 022
p 022.class
p 0x3FFFFFFF.class
=end


#inf
=begin
p inf = 1.0 / 0.0
p inf > 0.0
p inf.infinite?
p inf.finite?
=end


#nan
=begin
p nan = 0.0 / 0.0
p nan == nan
p nan.nan?
=end


#pow
=begin
p 2 ** 5
=end


#operator_as_method(?)
=begin
p -7.divmod(2)
p -3.1416.abs
p 0.5772.ceil
=end


#type
=begin
#p 1 + "2"
p 1 + "2".to_i
=end


#complex
=begin
require 'complex'
puts 3+ Complex(5, 6)
=end


#bit
=begin
a = 0b1100
b = 0b1010
p a
p b
p a & b
p a | b
p a ^ b         #XOR
p ~a
p a[2]
=end


#expr
=begin
p "現在時刻は: #{Time.now}"
p "標準入力の文字列表現: #{$stdin}"
=end


#backquote(shell command)
=begin
p `pwd`
p `ls -a`
=end


#%
=begin
str = "HELLO"
print "HE\nLLO\n"
p %!\th"o\nge#{str}!
p %q!\th"o\nge#{str}!
p %x!ls!
p %w!a b c!
=end


#here document1(!!)
=begin
p <<"EOS"[0,3]  #" can be ommited.
  THIS IS A
SCENTENCE IS
A SCENTENCE
EOS
=end


#here document2
=begin
p <<-AAA[0,3]
HERE
DOCUMENT
     AAA
=end


#literal
=begin
p ?1
p ?\n
print "\n"
p ?\u2318
=end


#regex1



#substring
=begin
story = <<-"EOS"
Solomon Grundy,
Born in Monday,
Chrustened on Tuesday,
Married on Wednesday,
Took ill on Thursday,
Worse on Friday,
Died on Saturday,
Buried on Sunday:
This is the end
Of Solomon Grundy.
EOS

p story["Monday"]
p story[/\w+sday/]
p story[/on/]	#first result(!!)

story = story.gsub(/Solomon Grundy/, "Hippopotamus")	#block(next,break)
print story
=end


#ex4-16
=begin
p "LOOK!"*3
=end


#split
=begin
p "a, bb, ccc,dddd".split(/,\s?/)
p "string".split(//)
=end


#ex4-19
=begin
story = <<-"EOS"
Solomon Grundy,
Born in Monday,
Chrustened on Tuesday,
Married on Wednesday,
Took ill on Thursday,
Worse on Friday,
Died on Saturday,
Buried on Sunday:
This is the end
Of Solomon Grundy.
EOS

story.each_line do |line|
print line
end
=end


#sprintf
=begin
p sprintf("hex = %X, oct = %o",10,10)
"hex = %X, oct = %o\n" %[10, 10]	#generate string(not print)
sprintf("%d",3)
=end


#string_equal
=begin
str1 = "Hello"
str2 = "Hello"
p str1 == str2
p str1.equal? str2
=end


#symbol
=begin
symbol1 = :"ruby"
symbol2 = :"ruby"
p symbol1 == symbol2
p symbol1.equal? symbol2
=end


#ex4-25
=begin
str = "あいう"
p str
p str.length
p str.bytesize
p str[0]
=end


#Encode
=begin
p Encoding.name_list
=end
