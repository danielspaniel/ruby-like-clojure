require 'minitest/autorun'
require_relative '../enum'

describe Enum do
  it 'assoc' do
    assert_equal Enum.assoc({}, :a, 2), { :a => 2 }
  end
  it 'assoc_in' do
    assert_equal Enum.assoc_in({}, [:a, :b], 2), { :a => {:b => 2 }}
  end
end
