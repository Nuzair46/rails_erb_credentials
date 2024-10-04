# frozen_string_literal: true

require "bundler/gem_tasks"
require "minitest/test_task"

Minitest::TestTask.create

require "rubocop/rake_task"

RuboCop::RakeTask.new

task default: %i[test rubocop]

namespace :dummy do
  desc "Regenerate the dummy app"
  task :create do
    system "rails new test/dummy --skip-active-record --skip-test --skip-bundle --skip-spring --skip-bootsnap --skip-git"
    system "cd test/dummy && bundle install"
  end
end