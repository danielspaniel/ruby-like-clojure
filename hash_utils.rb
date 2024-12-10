module HashUtils
  def self.assoc_in(map, path, value)
    first, *rest = path
    if rest.empty?
      map.merge(first => value)
    else
      map.merge(first => assoc_in(map.fetch(first, {}), rest, value))
    end
  end

  def self.update(target, key)
    target.merge(key => yield(target[key]))
  end

  def self.update_in(target, path)
    assoc_in(target, path, yield(target.dig(*path)))
  end
end