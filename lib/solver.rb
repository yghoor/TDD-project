class Solver
  def factorial(num)
    if num == 0
      return 1
    elsif num.negative?
      return 'Error: cannot apply factorial to a negative number'
    elsif num.is_a?(Integer) == false
      return 'Error: cannot apply factorial to a non-integer value'
    end

    result = 1
    num.times { |i| result *= num - i }
    return result
  end

  def reverse(string)
    str_array = string.split('')
    reversed_array = []
    string.length.times { reversed_array << str_array.pop }

    return reversed_array.join
  end

  def fizzbuzz(num)
    if num % 3 == 0 && num % 5 == 0
      return 'fizzbuzz'
    elsif num % 3 == 0
      return 'fizz'
    elsif num % 5 == 0
      return 'buzz'
    else
      return "#{num}"
    end
  end
end