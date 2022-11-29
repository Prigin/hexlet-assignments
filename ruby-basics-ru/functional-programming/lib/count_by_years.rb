# frozen_string_literal: true

# BEGIN
def count_by_years(users)
  users.each_with_object({}) do |user, acc|
    if user[:gender] == 'male'
      year = user[:birthday].split('-')[0]
      acc[year] ||= 0
      acc[year] += 1
    end
  end
end
# END