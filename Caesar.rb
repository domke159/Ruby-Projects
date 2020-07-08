def caesar_cipher(string, int)
    alphabet_upper = ('A'..'Z').to_a
    alphabet_lower = ('a'..'z').to_a
    return string.split("").map{|letter|
        if alphabet_lower.any?(letter) 
            letter_index = alphabet_lower.index(letter) + int
            letter = alphabet_lower[letter_index % alphabet_lower.length]
        end
        if alphabet_upper.any?(letter) 
            letter_index = alphabet_upper.index(letter) + int
            letter = alphabet_upper[letter_index % alphabet_upper.length]
        end
        letter 
        }.join("")
end

p caesar_cipher("My name is Dominykas",1)
p caesar_cipher("HeLlo", -1)