class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate

  def app_index
  end


  private

  def authenticate
    pass_phase = {user: ["chAlongpier","0123456789A987654321","1"]}
    unless session[:user].in?(pass_phase[:user])
      redirect_to sign_in_path
    end
    # authenticate_or_request_with_http_digest do |user|
    #   pass_phase[user]
    # end
  end
end
