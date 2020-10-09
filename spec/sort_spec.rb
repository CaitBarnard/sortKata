def sort(array)
  length = array.size
  return array if length <= 1

  loop do
    swapped = false
    (length-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
  
  array
end


describe "sorting" do

  it "returns an array" do
    array = []
    expect(sort(array)).to be_a(Array)
    expect(sort(array)).to eq([])
  end

  it "sorts an array of 2 numbers" do
    array = [2,1]
    expect(sort(array)).to eq([1,2])
  end

  it "sorts an array of 3 numbers" do
    array = [3,2,1]
    expect(sort(array)).to eq([1,2,3])
  end
  
  it "sorts an array of duplicate numbers" do
    array = [2,1,1,2]
    expect(sort(array)).to eq([1,1,2,2])
  end
end