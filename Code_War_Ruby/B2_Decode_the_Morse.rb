

def decodeMorse(morseCode)
    #your brilliant code here
	morse_dict = Hash.new({
		"a" => ".-",
		"b" => "-...",
		"c" => "-.-.",
		"d" => "-..",
		"e" => ".",
		"f" => "..-.",
		"g" => "--.",
		"h" => "....",
		"i" => "..",
		"j" => ".---",
		"k" => "-.-",
		"l" => ".-..",
		"m" => "--",
		"n" => "-.",
		"o" => "---",
		"p" => ".--.",
		"q" => "--.-",
		"r" => ".-.",
		"s" => "...",
		"t" => "-",
		"u" => "..-",
		"v" => "...-",
		"w" => ".--",
		"x" => "-..-",
		"y" => "-.--",
		"z" => "--..",
		" " => " ",
		"1" => ".----",
		"2" => "..---",
		"3" => "...--",
		"4" => "....-",
		"5" => ".....",
		"6" => "-....",
		"7" => "--...",
		"8" => "---..",
		"9" => "----.",
		"0" => "-----"
	})
	decodeM =""
	i = 0
	word = []
	value = ''
    a = morseCode.split(" ")
    a.each do |x|
		word[i] = x.to_s
		i += 1
    end
	puts word
	for num in 0...i
		morse_dict.each do | abc , c |
			if word[num] == c 
				value += abc
			end
		end
	end
	puts value
end

yasuo = ".... . -.--   .--- ..- -.. ."
decodeMorse(yasuo)

