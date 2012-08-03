require "minitest_helper"

describe Card do
  before do
    @card = Card.new
  end

  it "must be valid" do
    @card.valid?.must_equal true
  end
end
