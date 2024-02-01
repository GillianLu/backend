def is_isogram(word)
  found_letters = []
  word.each_char do |letter|
    downcased_letter = letter.downcase
    letter_found = false

    found_letters.each do |found_letter|
      if downcased_letter == found_letter
        letter_found = true
        break
      end
    end
    return false if letter_found
    found_letters << downcased_letter
  end
  true
end


# testing
puts is_isogram("Dermatoglyphics")
puts is_isogram("Programming")
