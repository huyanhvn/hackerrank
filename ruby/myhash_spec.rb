require_relative 'myhash'

RSpec.describe MyHash do
  before do
    @hash = MyHash.new
    @hash.insert('k1',1)
  end
 
  it "hash the correct information in a key" do
    @hash.query('k1').should == 1
  end
end