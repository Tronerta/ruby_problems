def bubble_sort_by (array)
	sorted = false

	while !sorted
		sorted = true
		array.each do |e|
			i = array.index(e)
			next_el = array[i+1]

			if e != array[-1]
				if yield(e, next_el) > 0
					array[i] = next_el
					array[i + 1] = e
					sorted = false
				end
			end

		end

	end
	array
end

# Test
res = bubble_sort_by(["hi","hello","hey", "helllooo", "h"]) do |left,right|
	left.length - right.length
end
print res
# => ["h", "hi", "hey", "hello", "helllooo"]