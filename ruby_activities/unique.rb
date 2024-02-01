def unique_in_order(sequence)
  unique_items = []
  last_seen = nil
  sequence = sequence.each_char if sequence.is_a?(String)

  sequence.each do |item|
    if item != last_seen
      unique_items.push(item)
      last_seen = item
    end
  end

   unique_items

end

puts unique_in_order('AAAABBBCCDAABBB').inspect
puts unique_in_order('ABBCcAD').inspect
puts unique_in_order([1, 2, 2, 3, 3]).inspect
