module RLC
  def self.assoc_in(hash, path, value)
    first, *rest = path
    return hash.dup.tap { |new_array| new_array[first] = value } if hash.is_a? Array
    return hash.merge(first => value) if rest.empty?

    hash.merge(first => assoc_in(hash.fetch(first, {}), rest, value))
  end

  def self.update(target, key)
    target.merge(key => yield(target[key]))
  end

  def self.update_in(target, path)
    assoc_in(target, path, yield(target.dig(*path)))
  end

  def self.get_in(hash, path, default = nil)
    hash.dig(*path) || default
  end
end 