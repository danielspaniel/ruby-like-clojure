require 'minitest/autorun'
require_relative '../hash_utils'

describe HashUtils do
  it 'assoc_in' do
    assert_equal({ a: { b: 2 } }, HashUtils.assoc_in({}, [:a, :b], 2))
    assert_equal({ a: [2, 1] }, HashUtils.assoc_in({ a: [0, 1] }, [:a, 0], 2))
  end

  it 'update_in' do
    assert_equal({ a: { b: 2 } }, HashUtils.update_in({}, [:a, :b]) { |other| (other || 0) + 2 })
    assert_equal({ a: { b: 3 } }, HashUtils.update_in({ a: { b: 1 } }, [:a, :b]) { |other| (other || 0) + 2 })
  end

  it 'update' do
    assert_equal({ a: 2 }, HashUtils.update({}, :a) { |other| (other || 0) + 2 })
    assert_equal({ a: 3 }, HashUtils.update({ a: 1 }, :a) { |other| (other || 0) + 2 })
  end

  it 'get_in' do
    assert_nil HashUtils.get_in({}, [:a])
    assert_equal 1, HashUtils.get_in({ a: 1 }, [:a])
    assert_equal 3, HashUtils.get_in({ a: [1, 3] }, [:a, 1])
    assert_equal 2, HashUtils.get_in({ a: { b: 2 } }, [:a, :b])
    assert_nil HashUtils.get_in({ a: { b: 2 } }, [:a, :c])
    assert_equal 4, HashUtils.get_in({ a: { b: 2 } }, [:a, :c], 4)
  end
end
