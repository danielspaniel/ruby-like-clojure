All your favorite functions that act on maps/hashes in clojure, but for ruby
like:
- assoc_in
- update_in
- update
- get_in

#### NOTE:   
  These functions all return a new hash, they do not modify the original hash

## Usage

- assoc_in 

```ruby
RLC.assoc_in({a: 1}, [:b], 3)
# => {a: 1, b: 3}
```

```ruby
RLC.assoc_in({a: 1}, [:b, :c], 3)
# => {a: 1, b: {c: 3}}
```

- update_in 

```ruby
RLC.update_in({}, [:a, :b]) { |other| (other || 0) + 2 }
# => { a: { b: 2 } }
```

```ruby
RLC.update_in({ a: { b: 1 } }, [:a, :b]) { |other| (other || 0) + 2 }
# => { a: { b: 3 } }
```

- update 

```ruby
RLC.update({}, :a) { |other| (other || 0) + 2 }
# => { a: 2 }
```

```ruby
RLC.update({ a: 1 }, :a) { |other| (other || 0) + 2 }
# => { a: 3 }
```

- get_in 

```ruby
RLC.get_in({ a: 1 }, [:a])
# => 1
```

```ruby
RLC.get_in({ a: [1, 3] }, [:a, 1])
# => 3
```

```ruby
RLC.get_in({ a: { b: 2 } }, [:a, :c])
# => nil
```

```ruby
RLC.get_in({ a: { b: 2 } }, [:a, :c], 4)
# => 4
```

```ruby
 my_report_hash
  .then { RLC.update_in(_1, %w[reports group1], &method(:fill_in_things)) }
  .then { RLC.update_in(_1, %w[reports group2], &method(:add_things)) }
# => new my_report_hash
```

###### Feel free to suggest other functions we can implement in ruby that you miss in clojure