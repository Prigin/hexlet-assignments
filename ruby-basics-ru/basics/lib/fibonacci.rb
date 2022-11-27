# frozen_string_literal: true

# BEGIN
def fibonacci(n)
  return 0 if n == 0
  return 1 if n == 1
  return nil if n < 0
  a0 = 0
  a1 = 1
  (n-1).times do 
    a0, a1 = a1 , a0 + a1
  end
  a1
end
# END


