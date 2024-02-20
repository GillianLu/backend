
def encode(string)
  directory = {'a' => '1', 'e' => '2', 'i' => '3', 'o' => '4', 'u' => '5'}
  encoded_string = ''

  for letter in string.chars
    if directory.include?(letter)
      encoded_string += directory[letter]
    else
      encoded_string += letter
    end
  end

  encoded_string
end

puts encode("hello")

def decode(string)
  directory = {'1' => 'a', '2' => 'e', '3' => 'i', '4' => 'o', '5' => 'u'}
  decoded_string = ''

  for number in string.chars
    if directory.include?(number)
      decoded_string += directory[number]
    else
      decoded_string += number
    end
  end
  decoded_string
end

puts decode("h3 th2r2")
