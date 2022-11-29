# frozen_string_literal: true

# BEGIN
def get_same_parity(arr)
  return [] if arr == []
  flag = (arr[0] % 2) > 0
  arr.select { |member| ((member % 2) > 0) == flag }
end
# END