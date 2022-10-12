class Solver
  def factorial(num)
    return 1 if num.zero?
    return 'Error: cannot apply factorial to a negative number' if num.negative?
    return 'Error: cannot apply factorial to a non-integer value' if num.is_a?(Integer) == false

    result = 1
    num.times { |i| result *= num - i }
    result
  end

  def reverse(string)
    str_array = string.chars
    reversed_array = []
    string.length.times { reversed_array << str_array.pop }

    reversed_array.join
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
