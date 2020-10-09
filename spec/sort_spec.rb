def sort(array)
  length = array.size
  return array if length <= 1

  if array[0] > array[1]
    array[0], array[1] = array[1], array[0]
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
  
end