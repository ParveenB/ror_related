require 'spec_helper'


describe LoginPagesController do
  # describe "DELETE records " do
    # it "delete records from db" do
      # # post :destroy, :id => 1
      # # response = LoginPage.find(1).destroy
      # # expect(response).to be_success
#       
      # delete :destroy, id: 3
#       
      # expect(response).to render_template("index")
      # expect(flash[:notice]).to eq 'Record deleted sucessfully.'
    # end
  # end
  
  
   # describe "GET created" do
        # it "new user will be created" do
        # get :create
#         
#         
        # expect(response).to be_success
      # expect(response.status).to eq(200)
    # end

    # it "renders the index template" do
      # get :index
      # expect(response).to render_template("index")
    # end

    # it "loads all of the posts into @posts" do
      # post1, post2 = Post.create!, Post.create!
      # get :index
# 
      # expect(assigns(:posts)).to match_array([post1, post2])
    # end
  # end
  # #---------------------------------------------
  #--------- deleting recoeds:-
    describe "GET #index" do 
      # before(:each) do
        # @contact =Factory(:contact)
      # end
      
        it "responds successfully with an HTTP 200 status code"  do
            get :index
            expect(response).to be_success
            expect(response.status).to eq(200)
        end
        
        it "renders the index template" do
            get :index
            expect(response).to render_template("index")
        end

        it "loads all of the data into @login_page.show" do
            contact=FactoryGirl(:contact)
            #post1,post2 = @login_page.show, @login_page.create
            get :index
            #expect(assigns(:id)).to match(:id)
            assigns(:contacts).should eq([contact])
        end
    end 
    
  #---------------------------------------------
    describe "GET #show" do
     # let(:id) {FactoryGirl.create(:contact)}
        it "assigns the requested data to @login_page.id" do
            
          #  get :show,  :id => contact.user_id 
           # assigns(:contact).should eq(contact)
        end
      end
#         
        # it "renders the #show view" do 
              # #get :show, :id=> @login_page(:id) 
              # response.should render_template :show 
        # end
    # end
                
    
   
    describe "GET #new" do 
      it "renders the :new template" do
        get :new
        expect(response).to be_success
        expect(response.status).to eq(200)
        expect(response).to render_template("new")
      end
      
      it "assigns a new data to @login_page" do
            
      end
          
           
    end 
#     
    # describe "POST #create" do 
    # context "with valid attributes" do
          # it "saves the new data in the database"
          # it "redirects to the home page"
    # end 
#     
    # context "with invalid attributes" do 
          # it "does not save the new contact in the database" 
          # it "re-renders the :new template" 
     # end 
  # end 
                   
  
  
end