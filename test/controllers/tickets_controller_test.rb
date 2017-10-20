require "test_helper"

describe TicketsController do
  let(:ticket) { tickets :one }

  it "gets index" do
    get tickets_url
    value(response).must_be :success?
  end

  it "gets new" do
    get new_ticket_url
    value(response).must_be :success?
  end

  it "creates ticket" do
    expect {
      post tickets_url, params: { ticket: { freelancer_id: ticket.freelancer_id, job_id: ticket.job_id, take_quantity: ticket.take_quantity } }
    }.must_change "Ticket.count"

    must_redirect_to ticket_path(Ticket.last)
  end

  it "shows ticket" do
    get ticket_url(ticket)
    value(response).must_be :success?
  end

  it "gets edit" do
    get edit_ticket_url(ticket)
    value(response).must_be :success?
  end

  it "updates ticket" do
    patch ticket_url(ticket), params: { ticket: { freelancer_id: ticket.freelancer_id, job_id: ticket.job_id, take_quantity: ticket.take_quantity } }
    must_redirect_to ticket_path(ticket)
  end

  it "destroys ticket" do
    expect {
      delete ticket_url(ticket)
    }.must_change "Ticket.count", -1

    must_redirect_to tickets_path
  end
end
