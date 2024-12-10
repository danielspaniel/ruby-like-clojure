require 'minitest/autorun'
require_relative '../pipe'

describe Pipe do
  it 'first' do
    assert_equal(
      Pipe.first({ :age => 2 },
                   ->(d) { d.merge(dude: "man") },
                   ->(d) { d.merge(age: d[:age] + 1) }),
      {:age => 3, :dude => "man" })
  end
end

