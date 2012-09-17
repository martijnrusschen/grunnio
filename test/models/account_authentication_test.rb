require "minitest_helper"

describe AccountAuthentication do
  before do
    @account_authentication = AccountAuthentication.new
  end

  it "must be valid" do
    @account_authentication.valid?.must_equal true
  end
end
