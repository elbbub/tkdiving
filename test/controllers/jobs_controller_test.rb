require "test_helper"

describe JobsController do
  let(:job) { jobs :one }

  it "gets index" do
    get jobs_url
    value(response).must_be :success?
  end

  it "gets new" do
    get new_job_url
    value(response).must_be :success?
  end

  it "creates job" do
    expect {
      post jobs_url, params: { job: { content: job.content, diving_num: job.diving_num, duration: job.duration, note: job.note, price: job.price, quantity: job.quantity, recuriter_id: job.recuriter_id, time: job.time, worker_num: job.worker_num } }
    }.must_change "Job.count"

    must_redirect_to job_path(Job.last)
  end

  it "shows job" do
    get job_url(job)
    value(response).must_be :success?
  end

  it "gets edit" do
    get edit_job_url(job)
    value(response).must_be :success?
  end

  it "updates job" do
    patch job_url(job), params: { job: { content: job.content, diving_num: job.diving_num, duration: job.duration, note: job.note, price: job.price, quantity: job.quantity, recuriter_id: job.recuriter_id, time: job.time, worker_num: job.worker_num } }
    must_redirect_to job_path(job)
  end

  it "destroys job" do
    expect {
      delete job_url(job)
    }.must_change "Job.count", -1

    must_redirect_to jobs_path
  end
end
