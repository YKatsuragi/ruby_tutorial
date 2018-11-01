#ex5-1
=begin
expression = ARGV.join('+')
total = ARGV.inject(0){|sum, arg| sum + arg.to_i}
p total.class
puts "#{expression} = #{total}"
=end

#File Class
#ex5-2,3
=begin
File.open("test.txt"){|f|
	contents = f.read
	print contents
}
=end


#ex5-5
=begin
File.open("test.txt"){|f|
f.each_line do |line|
	print line
	end
}
=end


#ex5-5'
=begin
File.open("test.txt"){|f|
f.each_line do |line|
	print"#{f.lineno}: #{line}"
	end
}
=end


#ex5-7
=begin
f = File.open("test.txt")
p f.readline
f.close
=end


#ex5-9
=begin
p $stdout
File.open("test.txt", "w"){|f|
	$stdout = f
	puts "Welcome to Glubdubdrib"
}
#puts "where am I"	(error!!)
#$stdout = STDOUT
=end


#ex5-10
=begin
ARGF.each_line do |line|
print line
end
=end


#ex5-11
=begin
require 'stringio'
buffer = String.new
sio = StringIO.new(buffer)
$stderr = $stdout = sio
puts "untuh"
$stdout = STDOUT
puts buffer
=end
