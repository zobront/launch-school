class School
  def initialize
    @roster = {}
  end

  def to_h
    results = {}
    @roster.keys.sort.each do |key|
      results[key] = @roster[key].sort
    end
    results
  end

  def add(name, _grade)
    @roster[_grade] = grade(_grade) << name
  end

  def grade(_grade)
    return [] unless @roster[_grade]
    @roster[_grade]
  end
end
