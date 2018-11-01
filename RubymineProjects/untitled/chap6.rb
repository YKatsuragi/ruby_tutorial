#ex6-1
=begin
cattle = "yahoo"
animal = cattle
cattle[2] = ?p
p cattle
p animal
p cattle.equal? animal
other = "yapoo"
p cattle.equal? other
=end

#変数が持つのはオブジェクトへの参照．
#ex6-2
=begin
def describe(name)
	puts "This is a #{name}."
	name[2] = ?p
	puts "This is a #{name}."
	end
	CATTLE = "yahoo"	#CATTLE<-constant
	describe(CATTLE)
	p CATTLE
=end


#local_variable
=begin
a = 
p a
=end


#ex6-9
=begin
a, *b = 1,2,3,4,5
p b
=end


#ex6-11
=begin
array = [1, 2]
a, b, *c, d = *array, 3, 4, 5
p a
p b
p c
p d
=end


#初期化イディオム(短絡評価を活用)
=begin
def generate_default_value
	print 'default value generated(f)'
	return 'default value(v)'
end
def some_method(param = nil)
	param ||= generate_default_value	#式全体がfalseのときparam =param || generate_default_value　の結果，paramにはdefault valueが入る
	print param
	print"\n"
end

some_method(nil)
some_method(false)
some_method(true)
some_method(0)
some_method(1)
some_method()
=end


#if
=begin
condition = true
if condition then
	print "****"
  else
	print"////"
end
=end


#case(範囲分岐)
=begin
value = 3
p case value
when '0' then '0'
when 1..9 then '1keta'
when 10..99 then '2keta'
end
=end


#後置while
=begin
def more?
	gets.chomp != "ok"
	end
begin
	print "満足したらokと入力してください．"
end while more?
=end


#for式
=begin
for i in [1, 2, 3] do
		puts i
		end
=end


#イテレータ
=begin
loop do
	print "loop\n"
	break
end

2.times{|i| printf("この%dは内部カウンタ", i)
			print" times\n"
}

1.upto(2) do |i| print "#{i} upto\n" end

a = loop{ break 1}
p a
=end


#例外補足
=begin
begin
	rescue 例外クラス=> 変数
	rescue
	else #例外なし
	ensure #全ての場合で実行される
end
=end

#do_something rescue error_handle #この書き方もok
