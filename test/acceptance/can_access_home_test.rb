require "test_helper"

# To be handled correctly this spec must end with "Acceptance Test"
describe "CanAccessHome Acceptance Test" do
  it "must have a content" do
    visit "/"
    must_have_content "grunn.io"
    end
end
