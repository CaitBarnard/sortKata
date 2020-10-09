def sort(array)
  array
end


describe "sorting" do

  it "returns an array" do
    array = []
    expect(sort(array)).to be_a(Array)
  end
end