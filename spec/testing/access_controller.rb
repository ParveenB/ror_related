class AccessController < ApplicationController
  layout 'parv'
  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]
  def index
    # display text & links
  end

  def login
    # login form
  end

  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user = AdminLogins.where(:username => params[:username]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end
    if authorized_user
      # mark user as logged in
      session[:id] = authorized_user.id
      session[:username] = authorized_user.username
      flash[:notice] = "You are now logged in."
      redirect_to(:action => 'index')
    else
      flash[:notice] = "Invalid username/password combination."
      redirect_to(:action => 'login')
    end
  end

  def logout
     # mark user as logged out
    session[:id] = nil
    session[:username] = nil
    flash[:notice] = "Logged out"
    redirect_to(:action => "login")
  end
  
  private
  def confirm_logged_in
    unless session[:id]
      flash[:notice]="Please log in"
      redirect_to(:action=>'login')
      return false
    else 
      return true
    end
  end
end
