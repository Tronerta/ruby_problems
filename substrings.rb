
def substrings (string, dictionary)
	substring_hash = Hash.new(0)

	string.split(" ").each do |string|
		dictionary.each do |word, index|

			match = /#{word}/.match(string.downcase)

			if match != nil 
				substring_hash[match[0]] += 1
			end

		end
	end

	puts substring_hash
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
# { "below" => 1, "low" => 1 }

substrings("Howdy partner, sit down! How's it going?", dictionary)
# { "down" => 1, "how" => 2, "howdy" => 1,"go" => 1, "going" => 1, "it" => 2, "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1 }