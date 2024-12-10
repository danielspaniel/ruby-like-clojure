require 'minitest/autorun'
require_relative '../hash_utils'

describe HashUtils do
  it 'assoc_in' do
    assert_equal HashUtils.assoc_in({}, [:a, :b], 2), { :a => { :b => 2 } }
  end

  it 'update_in' do
    assert_equal HashUtils.update_in({}, [:a, :b]) { |other| (other || 0) + 2 }, { :a => { :b => 2 } }
    assert_equal HashUtils.update_in({ a: { b: 1 } }, [:a, :b]) { |other| (other || 0) + 2 }, { :a => { :b => 3 } }
  end

  it 'update' do
    assert_equal HashUtils.update({}, :a) { |other| (other || 0) + 2 }, { :a => 2 }
    assert_equal HashUtils.update({ a: 1 }, :a) { |other| (other || 0) + 2 }, { :a => 3 }
  end
end
