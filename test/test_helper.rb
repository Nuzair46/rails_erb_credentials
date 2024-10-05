# frozen_string_literal: true

ENV["RAILS_ENV"] ||= "test"

require "rails"
require "rails/test_help"

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "rails_erb_credentials"

require "minitest/autorun"
