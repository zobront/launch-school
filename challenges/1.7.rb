class DNATest
  def initialize(strand)
    @strand = strand
  end

  def hamming(strand2)
    counter = 0
    @s1array = @strand.split("")
    @s2array = strand2.to_s.split("")
    @s1array.each_with_index do |x, index|
      if @s2array[index] == true
        counter += 1 if x != @s2array[index]
      end
    end
    p counter
  end

  def to_s
    @strand
  end
end


first = DNATest.new("GGACTGAF")
second = DNATest.new("GGACTGA")
first.hamming(second)
