
class Test < Struct.new(:parent, :description, :test)
  def evaluate!
    instance_exec(&test)
    puts "#{"    "*parent.tabs}#{parent.subject} #{description}".green
  rescue AssertionError
    puts "#{"    "*parent.tabs}#{parent.subject} #{description}".red
  end
end
