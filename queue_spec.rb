require_relative 'rtest'
require_relative 'queue'

describe Queue do
  it 'should pass - initializes with an empty array' do
    queue = Queue.new
    expect(queue.store).to eq([])
  end

  it 'should pass - does not initialize with a empty hash' do
    queue = Queue.new
    expect(queue.store).to not_eq({})
  end

  it 'should fail - with multiple expectations should fail when one fails' do
    queue = Queue.new
    expect(queue.store).to eq(1)
    expect(queue.store).to eq([])
  end

  it 'should fail - initializes a empty array' do
    queue = Queue.new
    expect(queue.store).to eq({})
  end

  context 'using contexts' do
    it 'should pass - initializes with an empty array' do
      queue = Queue.new
      expect(queue.store).to eq([])
    end

    context 'using nested contexts' do
      it 'should pass - should be nested - initializes with an empty array' do
        queue = Queue.new
        expect(queue.store).to eq([])
      end
    end
  end
end
