# frozen_string_literal: true

require "rails_erb_credentials/evaluated_credentials"
module RailsErbCredentials
  # class Railtie < ::Rails::Railtie
  #   initializer "rails_erb_credentials" do
  #     Rails.application.config.before_initialize do
  #       original_credentials = Rails.application.credentials
  #       puts "original_credentials: #{original_credentials}"
  #       Rails.application.credentials = EvaluatedCredentials.new(original_credentials)
  #       puts "Rails.application.credentials: #{Rails.application.credentials.test}"
  #     end
  #   end
  # end
end
