# frozen_string_literal: true

require "erb"

module RailsErbCredentials
  class EvaluatedCredentials
    def initialize(original_credentials)
      @original_credentials = original_credentials
    end

    def method_missing(method_name, *args, &block)
      value = @original_credentials.public_send(method_name)
      if value.is_a?(String) && value.include?("<%=")
        ERB.new(value).result(binding)
      else
        value
      end
    end

    def respond_to_missing?(method_name, include_private = false)
      @original_credentials.respond_to?(method_name) || super
    end
  end
end
