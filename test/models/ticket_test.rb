require "test_helper"

describe Ticket do
  let(:ticket) { Ticket.new }

  it "must be valid" do
    value(ticket).must_be :valid?
  end
end
