# frozen_string_literal: true

# BEGIN
def compare_versions(ver1, ver2)
  ver1 = ver1.split('.')
  ver2 = ver2.split('.')
  ver1.each_with_index do |num, i|
    return 1 if num.to_i > ver2[i].to_i
    return -1 if num.to_i < ver2[i].to_i
  end
  return 0
end
# END
