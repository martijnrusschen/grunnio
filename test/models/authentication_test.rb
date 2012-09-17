require "minitest_helper"

describe Authentication do
  before do
    @authentication = Authentication.new
  end

  it "must be valid" do
    @authentication.valid?.must_equal true
  end
end
