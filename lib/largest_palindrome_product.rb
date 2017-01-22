def largest_palindrome_product
  max = 0
  (100..999).each do |first_num|
    (100..999).each do |second_num|
      current_total = first_num * second_num
      if is_pallindrome?(current_total) && current_total > max
        max = current_total
      end
    end
  end
  return max
end

def is_pallindrome?(num)
  num = num.to_s
  num == num.reverse
end

# puts largest_palindrome_product
