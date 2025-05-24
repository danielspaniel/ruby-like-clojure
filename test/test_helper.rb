$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "ruby_like_clojure"

require "minitest/autorun"
require "minitest/reporters"

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]
