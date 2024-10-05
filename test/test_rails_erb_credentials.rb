# frozen_string_literal: true

require "test_helper"
require "dummy/config/environment" 

class TestRailsErbCredentials < Minitest::Test
  def setup
    ENV['TEST'] = "my_actual_secret_for_test"
    ENV['TEST3'] = "my_actual_secret_for_test3"
  end

  def test_that_it_has_a_version_number
    refute_nil ::RailsErbCredentials::VERSION
  end

  def test_evaluates_erb_in_credentials
    # <%= ENV["TEST"] %>
    assert_equal "my_actual_secret_for_test", Rails.application.credentials.test
  end

  def test_evaluates_erb_in_credentials_when_it_has_multiple_env_vars
    # <%= ENV["TEST3"] || test3 %>
    assert_equal "my_actual_secret_for_test3", Rails.application.credentials.test3
  end
end
