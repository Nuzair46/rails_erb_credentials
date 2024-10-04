# frozen_string_literal: true

require "rails"
require "rails/test_help"

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "rails_erb_credentials"

require "minitest/autorun"

Minitest::Test.class_eval do
  def before_setup
    super
    ENV['TEST'] = 'test_secret'
  end
end