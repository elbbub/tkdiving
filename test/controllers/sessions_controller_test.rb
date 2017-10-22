require "test_helper"

describe SessionsController do
  let(:session) { sessions :one }

  it "gets index" do
    get sessions_url
    value(response).must_be :success?
  end

  it "gets new" do
    get new_session_url
    value(response).must_be :success?
  end

  it "creates session" do
    expect {
      post sessions_url, params: { session: { create: session.create, new: session.new } }
    }.must_change "Session.count"

    must_redirect_to session_path(Session.last)
  end

  it "shows session" do
    get session_url(session)
    value(response).must_be :success?
  end

  it "gets edit" do
    get edit_session_url(session)
    value(response).must_be :success?
  end

  it "updates session" do
    patch session_url(session), params: { session: { create: session.create, new: session.new } }
    must_redirect_to session_path(session)
  end

  it "destroys session" do
    expect {
      delete session_url(session)
    }.must_change "Session.count", -1

    must_redirect_to sessions_path
  end
end
