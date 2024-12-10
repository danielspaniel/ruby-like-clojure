module Pipe
  def self.first(value, *operations)
    operations.reduce(value) do |result, operation|
      partial_operation = operation.curry
      partial_operation.(result)
    end
  end
end