def bubble_sort (array)

	until array == array.sort
	
		array.each do |e|
			i = array.index(e)
			next_el = array[i+1]

			if e != array[-1]
				if e > next_el 
					array[i] = next_el
					array[i + 1] = e
				end
			end

		end

	end
	array
end

# Test
print bubble_sort([4,3,78,2,0,2, 24, 19, 128, 3, 4, 5, 18, 22, 77])