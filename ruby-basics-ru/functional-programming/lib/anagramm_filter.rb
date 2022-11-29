# frozen_string_literal: true

# BEGIN
require 'set'
def anagramm_filter(example, arr)
  example = example.chars.to_set
  arr.select { |word| word.chars.to_set == example }
end
# ENDa