string = "What a string!"
key = 5
   
def cesar_coded(string, key)

  # Normalize the key
  key = key % 26 if key > 26
  ascii_codes = string.each_char.map(&:ord)
  
  transformed = ascii_codes.map do |char|
   
   
  if (char >= 97 && char <= 122)
      position = 1-(97-char)
    
  elsif (char >= 65 && char <= 90)
    position = 1-(65-char)
   
  else
    position = 100
  end
     threshold2 = 1 - position
     threshold1 = threshold2 + 25
     
       if threshold1 >= key
         new_char = char + key
         
         elsif (threshold1 < key && threshold1 >= 0)
         new_char = char + (key - 26)
         
       elsif threshold1 < 0
         new_char = char
         
       end
    new_char
    end 
 
transformed.map(&:chr).join
end

puts cesar_coded(string, key)

