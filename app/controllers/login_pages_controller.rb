class LoginPagesController < ApplicationController
  ##.and_return(true)
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
  
  def edit
    #puts params[:id]
    @login_page = LoginPage.find(params[:id])
  end
  
   def update
       @login_page = LoginPage.find(params[:id])
      if @login_page.update_attributes(login_page_params)
        flash[:notice]="Login page updated successfully"
        redirect_to(:action => 'index')
      else
        render('edit')
      end
  end
  
  def delete
    @login_page = LoginPage.find(params[:id])
  end
 
  def destroy
    login_page = LoginPage.find(params[:id]).destroy
    flash[:notice]="Login page destroyed successfully"
    redirect_to(:action => 'index')
  end
 
  private
  def login_page_params
    params.require(:login_page).permit(:user_id, :password, :name, :Age,:gender, :email, :mobile, :city, :country,:created_on, :updated_on,:remember_me)
  end
end
