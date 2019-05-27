module Enumerable

  def my_each 
    for i in 0...self.length 
    	yield(self[i])
    end
  end

  def my_each_with_index
  	for i in 0...self.length
  		yield(self[i], i)
  	end
  end

  def my_select
  	result = []
  	
  	self.my_each do |e|
  		result << e if yield(e)
  	end

  	result
  end

  def my_all?
  	result = []

  	self.my_each do |e|
  		result << e if yield(e)
  	end

  	result.length == self.length
  end

  def my_any?
  	self.my_each do |e|
  		return true if yield(e)
  	end
  	false
  end

  def my_none?
  	self.my_each do |e|
  		return false if yield(e)
  	end
  	true
  end


  def my_count
  	count = 0
  	self.my_each do |e|
  		count += 1 if yield(e)
  	end
  	count
  end

  def my_map (proc=nil)

		self.my_each do |e|
			i = self.index(e)
			self[i] = proc == true ? proc.call(e) : yield(e) 
		end
  	self
  end

  def my_inject
  	res = nil
  	self.my_each do |e|
  		i = self.index(e)

  		if e == self[0]
  			res = e
  			next
  		else 
  			res = yield(res, e)
  		end

  	end
  	res
  end
end

# Uncomment to test
array = [1, 8, 3, 4, -3, 0, 3]
# array.my_each { |n| print "#{n} " }
# array.my_each_with_index { |n, i| puts "#{i}: #{n}" }
# puts array.my_select { |n| n % 2 === 0 }
# puts array.my_all? { |n| n.is_a? Integer }
# puts array.my_any? { |n| n.is_a? String }
# puts array.my_none? { |n| n.is_a? String }
# puts array.count { |n| n == 3 }

# print array.my_map { |n| n * 2 }
# my_proc = Proc.new { |n| n ** 2 }
# print array.my_map(&my_proc)

# puts array.my_inject { |sum, n| sum += n  }
def multiply_els (array)
	array.my_inject { |prod, n| prod * n }
end
puts multiply_els([2, 4, 5])


