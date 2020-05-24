def print_parentheses(array, step, number, open, closed, final_array = [], counter = 1)
  counter += 1
  if closed == number
    p array.join
  else
    if open > closed
      array[step] = ')'
      print_parentheses(array, step + 1, number, open, closed + 1, final_array, counter)
    end
    if number > open
      array[step] = '('
      print_parentheses(array, step + 1, number, open + 1, closed, final_array, counter)
    end
  end
end

def generate_combinations(number)
  array = ['', ''] * number
  print_parentheses(array, 0, number, 0, 0)
end

generate_combinations(4)


