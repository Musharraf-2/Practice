
# explicit block
#  def  operation(a,b, operation)
#   operation.call(a,b)
#  end
#  puts operation(5,10, lambda {|a,b| a+b } )

# def foo
#   yield if block_given?
# end
#implicit block
# def operation2(a,b)
#   yield(a,b)
# end
# puts operation2(5,10) {|a,b| a-b}

#implicit to explicit
#  def  operation(a,b, &operation)
#   operation.call(a,b)
#  end
#  puts operation(5,10) {|a,b| a+b}

#explicit to implicit
# def operation(a,b)
#   yield(a,b)
# end
# addition= lambda {|a,b| a+b}
# puts operation(1,3,&addition)

# the devil and the details: synatax

#lamda return back to calling function
#Proc.new return the calling the function

# a= lambda {|a,b| a+b}
# puts a.call(10,14)

# a= ->(a,b){a+b}
# puts a.call(10,14)

# a=Proc.new{|a,b| a*b}
# puts a.call(5,6)

# a=proc{|a,b| a*b}
# puts a.call(5,6)














# puts 1.is_a?(String)
# puts 1.class
# puts 1.class.superclass
# puts 1.class.superclass.superclass
# puts 1.class.superclass.superclass.superclass
# puts 1.class.superclass.superclass.superclass.superclass #nil
# puts 1.superclass #will give error as it is class method not instance method








# class A
#   def print
#       puts "from class A"
#   end
# end
# class A
#   def print
#       puts "from class AAAAA"
#   end
# end

# class B < A
#    def print
#     puts "#{super}from class B"
#    end
#    def print
#     puts "from class BBBBB"
#    end
# end

# B.new.print








# class A
#   attr_accessor :a,:b
#   def initialize(a,b)
#     @a=a
#     @b=b
#   end
# end
# var= A.new(10,5)
# puts  var.a
# var.a=1000

# puts  var.a












# class A
#   attr_accessor :a,:b
#   def initialize(a,b)
#     @a=a
#     @b=b
#   end
#   def self.hello
#     "hello from class method"
#   end
# end
# puts   A.hello







# class Planets
#   @@numbers=0
#   attr_accessor :name
#   def initialize(name)
#     @name=name
#     @@numbers=@@numbers+1
#   end
#   def self.numbers
#     @@numbers
#   end
# end
# Planets.new("earth")
# Planets.new("pluto")
# puts Planets.numbers






#class variable vs class instance variable vs instance variable














#array.unique uses eql? and hash methods so we need to implement boht, == can be called in  eql? function











#puts uses to_s for objects
#p uses insepct for object, if there is no inspect then to_s will be used
#p and insepct show some detailed info




#splat or right side will convert them to array
# a=*(1..100)
# b=*"abc"
# c=*1
# p a
# p b
# p c









# puts Hash[4, 8]
# puts Hash[ [[4, 8], [15, 16]] ]





# puts [4, 8, 15, 16, 23, 42].count
# puts [4, 8, 15, 16, 23, 42].size
# puts [4, 8, 15, 16, 23, 42].length
# puts [42, 8, 15, 16, 23, 42].count(42)
# puts ["Jacob", "Alexandra", "Mikhail", "Karl", "Dogen", "Jacob"].count("Jacob")
# puts [42, 8, 15, 16, 23, 42].count(42)
# puts [4, 8, 15, 16, 23, 42].index(15)
# puts [4, 8, 15, 16, 23, 42].index { |e| e % 2 == 0 }
# p [4, 8, 15, 16, 23, 42].flatten
# p [4, [8], [15], [16, [23, 42]]].flatten
# [4, [8], [15], [16, [23, 42]]].flatten(1)
# p [4, 8, 15, 16, 23, 42].zip([42, 23, 16, 15, 8])
# p [4, 8, 15, 16, 23, 42].slice(2)
# p [4, 8, 15, 16, 23, 42].slice(2..5)
# [4, 8, 15, 16, 23, 42].join(", ")
#p [4, 8, 15, 16, 23, 42].shift
#p [4, 8, 15, 16, 23, 42].shift(3)
# p [8, 15, 16, 23, 42].unshift(4)
# p [16, 23, 42].unshift(4, 8, 15)









# When you include a module into a class, the module methods are imported as instance methods.
# However, when you extend a module into a class, the module methods are imported as class methods.
# module A
#   def fromA
#     puts "from A"
#   end
# end
# class CA

# extend A
# end

# CA.fromA








# def big_q_string(numerator, denominator)
# 	%Q[This %Q syntax is the ugliest one.
# #{numerator} out of #{denominator} "dentists" agree.]
# end





# def repetitive_array_of_strings
#   ["Wow,", "this", "is", "a", "pretty", "long", "list", "of", "words", "and", "it", "took", "me", "a", "long", "time", "to", "type", "because", "of", "all", "those", "darn", "quote", "characters.", "Geez."]
# end

# def array_of_words_literal
#   %w[With this double-u shorthand it wasn't very hard at all to type out this list of words. Heck, I was even able to use double-quotes like "these"!]
# end


# a=*(1..9) #both inclusive
# b=*(1...9) # only first inclusive
# p a
# p b








# puts "from the outside: #{defined?(on_the_inside).inspect}"







# module A
#   $gvar=12
# end
# class B
#   def print_gvar
#     puts $gvar
#   end
# end
# puts B.new.print_gvar






# Constants begin with an uppercase letter. Constants defined within a class or module can be accessed from within that class or module, and those defined outside a class or module can be accessed globally.

# Constants may not be defined within methods. Referencing an uninitialized constant produces an error. Making an assignment to a constant that is already initialized produces a warning.
# Abc=12
# Abc=16
# p Abc
# class A
#   B=12
# end
# puts A::B






# [4, 8, 15, 16, 23, 42].each_with_index { |e, i| puts "#{e} -- #{i}" }
# {:locke => "4", :hugo => "8"}.each_with_index do |kv, i|
#   puts "#{kv} -- #{i}"
# end







# union_example = ["a", "b", "a"] | ["c", "c"]
# p union_example
# intersection_example = ["a", "b", "a"] & ["c", "c"]
# p intersection_example
# array_difference = [1,2,3, 1,2,3] - [1]
# p array_difference


# def a(*args)
#   puts args.length
#   puts args[0]
# end
# a("ABC",1)








# normal = Hash.new
# p normal
# was_not_there = normal[:zig]
# puts "Wasn't there:"
# p was_not_there

# usually_brown = Hash.new("brown")
# p usually_brown
# pretending_to_be_there = usually_brown[:zig]
# puts "Pretending to be there:"
# p pretending_to_be_there











# floor = [["blank", "blank", "blank"],
#          ["gummy", "blank", "blank"],
#          ["blank", "blank", "blank"]]

# attempts = 0
# candy = catch(:found) do
# 	floor.each do |row|
#   	row.each do |tile|
#       attempts += 1
#     	throw(:found, tile) if tile == "jawbreaker" || tile == "gummy"
#   	end
# 	end
# end
# puts candy
# puts attempts







# module A
#   def hello
#     puts "hello from A"
#   end
# end
# module B
#   def hello
#     puts "hello from B"
#   end
# end
# class C
# include B
# include A
# end
# C.new.hello





# $GA="12".freeze

# $GA<<"abc"
# p $GA
