# frozen_string_literal: true

# rubocop:disable Style/For
# BEGIN
def build_query_string(params = {})
  params.sort_by { |key, value| key }
        .map { |pair| "#{pair[0]}=#{pair[1]}" }
        .join("&")
end
# END
# rubocop:enable Style/For