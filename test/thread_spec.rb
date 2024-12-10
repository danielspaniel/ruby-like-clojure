require 'minitest/autorun'
require_relative '../enum'
require_relative '../thread'

describe ThreadOp do
  it 'first' do
    assert_equal(
      ThreadOp.first({ :age => 2 },
                   ->(d) { Enum.assoc(d, :dude, "man") },
                   ->(d) { d.merge(age: d[:age] + 1) }),
      {:age => 3, :dude => "man" })
  end
end

