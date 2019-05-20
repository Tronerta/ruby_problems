
def caesar_cipher (string, shift)
	string.each_char do |char|
		if char.ord >= 65 && char.ord <= 122
			# Shift character and wrap from Z to A
			char = char == char.upcase ? 
											char.ord + shift > 90 ? char.ord - 26 + shift : char.ord + shift :
											char.ord + shift > 122 ? char.ord - 26 + shift : char.ord + shift

			print char.chr
		else
			print char
		end
	end
end

caesar_cipher("What a string!", 5)
# "Bmfy f xywnsl!"