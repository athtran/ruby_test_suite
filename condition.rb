class Condition < Struct.new(:object)
end

class EqualityCondition < Condition
  def met?(subject)
    subject == object
  end
end

class InequalityCondition < Condition
  def met?(subject)
    subject != object
  end
end
