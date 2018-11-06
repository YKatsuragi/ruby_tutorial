#class定義
=begin
class Duration	#class名は定数
	1 + 1	#ここには任意の式を記述可能
end
duration = Duration.new
p duration
=end


#継承
=begin
class Duration < Range
end
=end


#インスタンスメソッド
=begin
class Duration
	def display; puts self end
end
duration = Duration.new
duration.display
=end


#クラスメソッド
=begin
class Duration
	def Duration.print(x); p x end	#このように定義するとクラスメソッドになる．
end
Duration.print 1	#インスタンスがなくても呼び出せる
=end


#クラスメソッドの別の定義
=begin
class Duration
	def self.print(x); p x end
end
Duration.print 1
=end


#インスタンスの生成
=begin
class Duration
	def initialize(since, till)
		@since = since
		@until = till
	end
	attr_accessor "since", "until"	#attr_accessorは属性メソッドを定義するメソッド
end
duration = Duration.new(Time.now, Time.now + 3600)
p duration.until
p duration.since = Time.now
=end


#クラス定義の追加
=begin
class String
	def caesar; tr 'a-zA-Z', 'n-za-mN-ZA-M' end
end
puts "Learning Ruby".caesar
=end


#定義の上書き
=begin
class Fixnum
	alias original_addition +
	def +(rhs)
		original_addition(rhs).succ
	end
end
p 1+1
p 5+2
=end


#クラスの上書きを禁止
=begin
Fixnum.freeze
=end


#スーパークラスの呼び出し
=begin
class Duration
	def display(target=$>)
		super
		target .write "(#{self.since}-#{self.until})"
	end
end
duration.display
=end



#クラス変数
=begin
class Foo
	@@class_variable = "foo"
	def print
		p @@class_variable
	end
end
class Bar < Foo
	p @@class_variable
	p "def bar"
	@@class_variable = "bar"
	def print
		p @@class_variable
	end
end
foo = Foo.new
foo.print
bar = Bar.new
bar.print
=end


#トップレベルの定数を参照
=begin
CONSTANT = 1
class Duration
	def print_const
		print ::CONSTANT	#これは略記法
	end
end
duration = Duration.new
duration.print_const
=end


#一般にはobject.methodsとobject.class.instance_methodは同じ



#特異メソッド
=begin
message = "Hello"
def message.build_greeting(target)
	return ("#{self},#{target}.")
end
p message.build_greeting("world")
message2 = "Hello"
p message2.build_greeting("world")
=end


#Singletonパターン
=begin
CENTRAL_REPOSITRY = Object.new
def CENTRAL_REPOSITRY.register(target)
	@registered_objects ||= []
	unless @registered_objects.include? target	#targetを含まない
		@registered_objects << target
	end
end
def CENTRAL_REPOSITRY.unregister(target)
	@registered_objects ||= []
	@registered_objects.delete(target)
end
def CENTRAL_REPOSITRY.showall
	print @registered_objects
end
CENTRAL_REPOSITRY.register("hello")
CENTRAL_REPOSITRY.showall
CENTRAL_REPOSITRY.register("world")
CENTRAL_REPOSITRY.showall
=end


#特異メソッド（特定のインスタンスに属す）と特異クラス（特定のインスタンスしか持たない）
#特異クラスのインスタンスメソッド＝特異メソッド

