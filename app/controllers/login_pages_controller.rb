class LoginPagesController < ApplicationController
  
  layout "project"
  
  def index
    @login_pages = LoginPage.all
  end

  def show
    @login_page=LoginPage.find(params[:id])
  end
  
  def new
    @login_page = LoginPage.new
  end
  
  def create
    @login_page = LoginPage.new(login_page_params)
        if @login_page.save
          flash[:notice]= "Login Page created successfully."
          redirect_to(:action=>'index')
        else
          render('new')
        end
  end
 
  private
  def login_page_params
    params.require(:login_page).permit(:user_id, :password, :name, :age,:gender, :email, :mobile, :city, :country,:created_on, :updated_on,:remember_me)
  end
end
