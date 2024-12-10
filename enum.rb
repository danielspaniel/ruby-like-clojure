module Enum
  def self.assoc(m, k, v)
    m.merge(k => v)
  end

  def self.assoc_in(map, path, value)
    first, *rest = path
    if rest.empty?
      assoc(map, first, value)
    else
      assoc(map, first, self.assoc_in(map.fetch(first, {}), rest, value))
    end
  end
end

