def disemvowel_trolls(statement)
  vowels = ['a', 'e', 'i', 'o', 'u']
  final_ans = ""

  statement.split("").each do |word|

    if not vowels.include?(word.downcase)
      final_ans += word
    end

  end

  puts final_ans
end

disemvowel_trolls("The website is for losers LOL!")
