# frozen_string_literal: true

# BEGIN
def fizz_buzz(start, stop)
  acc = []
  return nil if start > stop
  (start..stop).each do |num|
    buff = ''
    buff += "Fizz" if num % 3 == 0
    buff += "Buzz" if num % 5 == 0
    buff += "#{num}" if buff == ""
    
    acc << buff
  end
  acc.join(' ')
end
# END



puts fizz_buzz(3, 15)
