require_relative 'test_helper'

describe RLC do
  it 'assoc_in' do
    a = {}
    assert_equal({ a: { b: 2 } }, RLC.assoc_in(a, [:a, :b], 2))
    assert_equal({}, a, 'returns new hash and does not mutate original')
    assert_equal({ a: [2, 1] }, RLC.assoc_in({ a: [0, 1] }, [:a, 0], 2))

  end

  it 'update_in' do
    a = {}
    assert_equal({ a: { b: 2 } }, RLC.update_in(a, [:a, :b]) { |other| (other || 0) + 2 })
    assert_equal({}, a, 'returns new hash and does not mutate original')
    assert_equal({ a: { b: 3 } }, RLC.update_in({ a: { b: 1 } }, [:a, :b]) { |other| (other || 0) + 2 })
  end

  it 'update' do
    a = {}
    assert_equal({ a: 2 }, RLC.update(a, :a) { |other| (other || 0) + 2 })
    assert_equal({}, a, 'returns new hash and does not mutate original')
    assert_equal({ a: 3 }, RLC.update({ a: 1 }, :a) { |other| (other || 0) + 2 })
  end

  it 'get_in' do
    assert_nil RLC.get_in({}, [:a])
    assert_equal 1, RLC.get_in({ a: 1 }, [:a])
    assert_equal 3, RLC.get_in({ a: [1, 3] }, [:a, 1])
    assert_equal 2, RLC.get_in({ a: { b: 2 } }, [:a, :b])
    assert_nil RLC.get_in({ a: { b: 2 } }, [:a, :c])
    assert_equal 4, RLC.get_in({ a: { b: 2 } }, [:a, :c], 4)
  end
end 