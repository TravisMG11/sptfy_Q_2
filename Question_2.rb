def decode_string(str)
  i = 0
  decoded_str = ""

  while i < str.length - 1
    if integer_check(str[i])
      number_of_reps, i = find_number_of_reps(str, i)
      j = where_does_it_end?(str, i)
      number_of_reps.times do
        decoded_str << decode_string(str[i..j])
      end
      i = j + 1
    else
      str << s[i]
      i += 1
    end
  end

  decoded_str
end

def integer_check(el)
  return true if el =~ /\A[-+]?[0-9]+\z/
end

def find_number_of_reps(str, i)
  reps_str = ""
  end_idx = i + 1
  (i...str.length).each do |x|
  end_idx = x
  if integer_check(str[x])
    reps_str << str[j]
    end_idx += 1
  else
    end_idx += 1
    break
  end
  return reps_str.to_i, end_idx
end

def where_does_it_end?(str, i)
  idx = 0
  (i...str.length).each do |idx2|
    return x if str[x] == "]" && idx == 0
  idx -= 1 if s[x] == "["
  idx +=1 if s[x] == "]"
end


decode_string("4[ab]")

decode_string("2[b3[a]]")
