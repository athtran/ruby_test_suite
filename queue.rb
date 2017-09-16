class Queue
  attr_reader :store

  def initialize(store = [])
    @store = store
  end

  def add(element)
    store << element
  end

  def remove
    store.shift
  end
end
