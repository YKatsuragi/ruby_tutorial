#ex2-1
=begin
cattle = "yahoo"
p array = [cattle, cattle]
cattle[2] = 'p'
p array
=end


#ex2-2~6
=begin
a = 1
b = "str"
c = [a, b, 3, "文字列", 5, 6, 7, 8, 9, 10]
p c
d = [a, c, [1, 2, 3]]
p d

p d[2]
p c[-2]
p c[-5]
p c[1, 5]   #1番目から最大5個取る
p c[10, 1]  #範囲外

p c[0..3]
=end


#ex2-7
=begin
a = [1, 2]
p a
a[0] = 3
p a
a[4] = 4
p a
a[0, 3] = 'a', 'b', 'c'
p a
a[0..2] = "A"
a[1] = "B"
p a
=end


#ex2-8
=begin
a = ["a", "b"]
p a[-3]
p a[-3] = 1   #マイナスで範囲外に代入するとエラー(正の数での範囲外の代入はOK)
=end


#ex2-10
=begin
array = [4, 3, 2, 1, 0]
p array
p array *= 2
p array.sort
p array
p array.uniq
p array
array.uniq!
p array
=end


#ex2-11
=begin
array = ["a", "b", "c"]
array.each do |item|
  print item + " "
end
print "\n"

array.each_with_index do |item, index|
  p [item, index]
end
=end


#ex2-13
=begin
acids = ["Adenin",  "Thymine", "Guanine", "Cytosine"]
signs = acids.map{|acid| acid[0,2]}   #acidの2文字目を取る
p signs

signs = acids.map{|acid| acid.downcase}
p signs
=end


#ex2-15
=begin
array = ["73", "2", "5", "1999", "53"]
p array.sort
p array.sort{|x, y| x.to_i <=> y.to_i}
=end


#ex2-17
=begin
month_to_original = {"Jan" => 1, "Feb" => 2, "Mar" => 3}
p month_to_original["Jan"]
p month_to_original["Feb"]
=end


#ex2-18,20
=begin
prefix = "yapoo-"
abbrevation = {
    "CAT" => "Condensed-Abridged Tiger",
    "yapomb" => prefix + "womb",
    "pilk" => prefix + "milk"
}
p abbrevation["CAT"]
abbrevation["BB"] = "AA"
p abbrevation
=end


#ex2-19
=begin
params = {rin: 5, kimiko: 7, kayo: nil}
p params

params.each do |name, num|
  puts "#{name} is #{num}"
end

p params.map{ |name, num|
  "#{name} is #{num}"
}
=end