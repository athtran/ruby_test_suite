
class Test < Struct.new(:parent, :description, :test)
  def evaluate!
    instance_exec(&test)
    puts "#{"    "*parent.tabs}#{description}".green
  rescue AssertionError
    puts "#{"    "*parent.tabs}#{description}".red
  end
end
