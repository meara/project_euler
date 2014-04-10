#1 - Multiples of 3 and 5

# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def one(limit)
  multiples = multiples_of(3, limit) + multiples_of(5, limit)
  multiples.uniq.inject(:+)
end

def multiples_of(factor, limit)
  i = factor
  multiples = []
  while i < limit
    multiples << i
    i = i + factor
  end
  multiples
end

# p one(1000)

describe 'multiples_of' do

  it 'returns an array' do
    expect(multiples_of(3, 7)).to be_an_instance_of(Array)
  end

  it 'array contains correct multiples' do
    expect(multiples_of(3,7).sample % 3).to eq 0 
  end

  it 'returns only multiples under the limit' do
    expect(multiples_of(3,7).max).to be < 7
  end

end


describe 'one' do

  it 'returns the correct sum' do
    expect(one(10)).to be 23
  end

end