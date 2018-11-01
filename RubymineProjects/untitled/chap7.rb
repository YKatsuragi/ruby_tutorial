#ex7-4
=begin
def some_method(a, b)
	p [a, b]
end
params = [1, 2]
x, y = params	#x = 1, y = 2
some_method(params)		#error
=end


#def
=begin
def sum(x,y)
	return (x+y)
end

print sum(1, 2)
print sum("Hello", ",world")
=end


#return
=begin
def fact(n)
	return 1 if n == 0
	product = 1
	(1..n).each do |i|
		product *= i
	end
	return product
end
print fact(5)
=end


#上と同じ
=begin
def fact(n); (1..n).inject(1){|p,i| p*i} end
print fact(5)
=end


#多値を返す関数
=begin
def some_method(a)
	return a, 1, 2, 3
end
a, b, *c = *some_method(0)
p a
p b
p c		#cは配列
=end


#デフォルト引数
=begin
def print_time(time = Time.now)
	p time
end
print_time	#現在時刻
sleep 1
print_time
print_time(1)	#1が表示される
=end


#可変長引数
=begin
def some_method(a, b, *c)
	p [a, b, c]
end
some_method(1,2,3,4,5)
=end


#ブロックローカル変数
=begin
a, b = "str", "ing"
(1..3).each do |i; a, b|	#;は何
	a, b = 1, 2
	end
	p a, b
=end


#ex7-21(!)
=begin
[[1, 2], [3, 4]].each do |a, b, c|
	p a
	p b
	p c
	p [a,b]
end
=end


#ブロック付きメソッド
=begin
def foo_bar_baz
	yield "foo"
	yield "bar"
	yield "baz"
end

foo_bar_baz do |item|
	puts item
end
=end


#Proc
=begin
class SleepyPerson
	def register_handler(&handler)
	@event_handler = handler
	end
	def wake_up!
		@event_handler.call Time.now, "woke up"
	end
end
john = SleepyPerson.new
john.register_handler {|time, message| p [time, message]}
john.wake_up!
=end


#ex7-29
=begin
proc = Proc.new { puts "Proc was called"}
3.times(&proc)
=end
