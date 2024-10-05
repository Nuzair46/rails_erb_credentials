# frozen_string_literal: true

require "erb"

module RailsErbCredentials
  class EvaluatedCredentials
    def initialize(original_credentials)
      @original_credentials = original_credentials
    end

    def method_missing(method_name, *args, &block)
      if @original_credentials.respond_to?(method_name)
        value = @original_credentials.public_send(method_name, *args, &block)
        evaluate_value(value)
      else
        super
      end
    end

    def evaluate_value(value)
      if value.is_a?(Hash)
        value.transform_values { |v| evaluate_value(v) }
      elsif value.is_a?(String) && value.include?("<%=")
        ERB.new(value).result(binding)
      else
        value
      end
    end

    def respond_to_missing?(method_name, include_private = false)
      @original_credentials.respond_to?(method_name, include_private) || super
    end
  end
end
