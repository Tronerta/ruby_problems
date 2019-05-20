
def stock_picker (array)
	profit = 0
	result = []

	array.each do |int|
		for i in (array.index(int)..array.length - 1)

			if array[i] - int > profit
				profit = array[i] - int
				result = [array.index(int), i]
			end
			
		end
	end

	print result
end

stock_picker([3, 2, 5, 1])
# [1,4]  # for a profit of $15 - $3 == $12