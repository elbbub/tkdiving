class SessionsController < ApplicationController
  # before_action :set_session, only: [:show, :edit, :update, :destroy]


  skip_before_action :authenticate

  # GET /sessions/new
  def new
    # binding.pry
    # @session = Session.new
  end

  # POST /sessions
  def create
    # binding.pry

    pass_phase = {user: ["chAlongpier","0123456789A987654321","1"]}
    if params[:pass_phase].in?(pass_phase[:user])
      # binding.pry
      session[:user] = params[:pass_phase]
      redirect_to root_path, notice: 'Session was successfully created.'
    else
      render :new
    end
  end

  # DELETE /sessions/1
  def destroy
    reset_session
    # @session.destroy
    redirect_to root_path, notice: 'Session was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_session
    #   @session = Session.find(params[:id])
    # end
    #
    # # Only allow a trusted parameter "white list" through.
    # def session_params
    #   params.require(:session).permit(:new, :create)
    # end
end
