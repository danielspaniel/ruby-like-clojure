# frozen_string_literal: true

require "bundler/gem_tasks"
require "minitest/test_task"

Minitest::TestTask.create(:test) do |t|
  t.libs << "test"
  t.test_globs = ["test/**/*_test.rb", "test/**/*_spec.rb"]
end

task default: :test
