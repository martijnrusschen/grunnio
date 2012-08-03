require "minitest_helper"

describe Initiative do
  before do
    @initiative = Initiative.new
  end

  it "must be valid" do
    @initiative.valid?.must_equal true
  end
end
