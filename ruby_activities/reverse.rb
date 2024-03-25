#reverse a string, starting with the last character, then just print
def reverse(string)
  reversed_string = ""
  current_index = (string.length - 1)

  while current_index >= 0
    reversed_string << string[current_index]
    current_index -= 1
  end

  reversed_string
end

puts reverse("hello")
