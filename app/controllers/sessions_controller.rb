class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id

      redirect_to :root, :notice => "Thanks for signing in!"
    else
      flash[:notice] = "Whoa, slow down there buddy. Why dont you try that again."
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to :root, :notice => "You have signed out."
  end

end
