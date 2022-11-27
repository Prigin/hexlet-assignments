# frozen_string_literal: true

# BEGIN
def reverse(str)
  acc = ""
  str.each_char { |ch| acc = ch + acc }  
  acc
end
# END

