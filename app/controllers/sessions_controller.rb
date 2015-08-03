class SessionsController < ApplicationController

  after_filter :process_login, only: [:create]

  def create
    @auth = request.env['omniauth.auth']

    unless @identity = Identity.find_or_create_with_omniauth(@auth)
      redirect_to root_url, notice: "Something went wrong. Please try again."
    end

    if user_signed_in?
      if @identity.user == current_user
        notice = "Already linked that account!"
      else
        @identity.user = current_user
        notice = "Successfully linked that account!"
      end
    else
      unless @identity && @identity.user.present?
        @identity.create_user(:name => @auth["info"]["name"])
        @identity.save
      end
      reset_session
      session[:user_id] = @identity.user.id
      notice = "Logged in!"
    end
    redirect_to root_url, notice: notice
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "Signed Out!"
  end

  def failure
    redirect_to root_url, alert: "Authentication error: #{params[:message].humanize}"
  end

  private

  def process_login
    @identity && @identity.process_login(DateTime.now)
  end
end
