# frozen_string_literal: true

# BEGIN
require 'uri'
require 'forwardable'

class Url
    extend Forwardable
    include Comparable

    attr_reader :url

    def initialize(url)
        @url = URI(url)
        @params = parse(url)
    end

    def parse(url)
        return {} if url.split('?')[1] == nil
        url.split('?')[1].split('&').each_with_object({}) { |pair, acc| acc[pair.split('=')[0].to_sym] = pair.split('=')[1] }
    end

    def query_params
        @params
    end

    def query_param(key, value=nil)
        if value == nil
            @params[key]
        elsif @params[key] != nil
            @params[key]
        else
            @params[key] = value
            @params[key]
        end

    end

    def <=> (obj)
        url <=> obj.url
    end
    def_delegators :@url, :scheme, :host
end
# END