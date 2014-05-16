require 'spec_helper'

# index   3/3              done
# show    1/1              done
# new     1/1              done
# create  0/2  
# update    
# destroy 

describe LoginPagesController do  
         
  #---------------------------------------------   INDEX
  describe "GET #index" do 
    it "responds successfully with an HTTP 200 status code"  do
      get :index
      expect(response).to be_success
      expect(response.status).to eq 200
    end
        
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the data into @login_page.show" do
      post :index, :id =>'5' ,:user_id =>'test' , :password =>'test', :name =>'test_name' , 
      :Age =>'23', :gender =>'Female', :email =>'test@gmail.com', :mobile =>'8989898989', :city =>'Hyderabad', 
      :country=>'India', :created_on => 'test created on', :updated_on => 'test undated on',:remember_me => '1'
      expect(response.status).to eq 200
    end
  end 
    
    
  #---------------------------------------------    SHOW
  describe "GET #show" do
    it "renders the show-view" do 
      get :show, :id => '3'
      expect(response).to be_success
      expect(response.status).to eq 200
      expect(response).to render_template("show")
    end        
  end
                
    
  #---------------------------------------------   NEW
  describe "GET #new" do 
    it "renders the :new template" do
      get :new
      expect(response).to be_success
      expect(response.status).to eq(200)
      expect(response).to render_template("new")
    end           
  end 
    
    
  #---------------------------------------------    CREATE
  describe "POST #create" do 
    before(:each) do
      LoginPage.stub(:new).and_return(@login_page = mock_model(LoginPage, :save => true))
    end
    def do_create
      post :create, :login_page => {:user_id =>'6' , :password =>'testtt', :name =>'test_name' ,:Age =>'23', :gender =>'Female', :email =>'test@gmail.com', :mobile => '8989898989', :city => 'Hyderabad', :country=>'India', :remember_me => 'Yes'}
    end
    
    it "should create the data" do
    LoginPage.should_receive(:new).with('user_id' =>'6' , 'password' =>'testtt', 'name' =>'test_name' ,'Age' =>'23', 'gender' =>'Female', 'email' =>'test@gmail.com', 'mobile' => '8989898989', 'city' => 'Hyderabad', 'country'=>'India', 'remember_me' => 'Yes'
).and_return(@login_page)
    do_create
  end
  
    context "with valid attributes" do
      it "saves the new data in the database" do
        post :create, :login_page => {:user_id =>'6' , :password =>'testtt', :name =>'test_name' ,:Age =>'23', :gender =>'Female', :email =>'test@gmail.com', :mobile => '8989898989', :city => 'Hyderabad', :country=>'India', :remember_me => 'Yes'}
        @login_page.should_receive(:save).and_return(true)
        do_create
        expect(response.status).to eq 302 
        expect(response).to be_redirect
        expect(flash[:notice]).to eq 'Login Page created successfully.'  
      end
    end      
    
    context "with invalid attributes" do 
      it "does not save the new contact in the database" do
            
      end
      it "re-renders the :new template" do
            
      end
    end       
  end 
    
  #---------------------------------------------    DELETE

  describe "DELETE records " do
    it "delete records from db" do
      post :destroy, :id => 2
      # response = LoginPage.find(2).destroy
      expect(response.status).to eq 302
      expect(response).to be_redirect
      expect(flash[:notice]).to eq 'Login page destroyed successfully'
    end
  end
    
end