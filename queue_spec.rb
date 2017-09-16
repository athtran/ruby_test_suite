require_relative 'rtest'
require_relative 'queue'

describe Queue do
  it 'green - initializes with an empty array' do
    queue = Queue.new
    expect(queue.store).to eq([])
  end

  it 'green - does not initialize with a empty hash' do
    queue = Queue.new
    expect(queue.store).to not_eq({})
  end

  it 'red - with multiple expectations should fail when one fails' do
    queue = Queue.new
    expect(queue.store).to eq(1)
    expect(queue.store).to eq([])
  end

  it 'red - initializes a empty hash' do
    queue = Queue.new
    expect(queue.store).to eq({})
  end

  context 'using contexts' do
    it 'green - initializes with an empty array' do
      queue = Queue.new
      expect(queue.store).to eq([])
    end
  end
end
