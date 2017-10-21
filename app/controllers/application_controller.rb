class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def app_index
  end

  def app_sign_in_new
  end

  def app_sign_in
    pass_phrase = ["fly A jump","123456789O987654321"]
  end
end
