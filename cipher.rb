def cipher(text, n)
   alphabet = ('a'..'z').to_a.concat(('A'..'Z').to_a)
   new_text = ''

    text.each_char do |i|
        if !alphabet.include?(i)
            new_text +=i
        else
            new_text += alphabet[alphabet.index(i) - n] 
        end
   end
   
   return new_text
end

 puts cipher("THIS is A test", 1)
