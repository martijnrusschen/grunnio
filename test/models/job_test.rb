require "minitest_helper"

describe Job do
  before do
    @job = Job.new
  end

  it "must be valid" do
    @job.valid?.must_equal true
  end
end
