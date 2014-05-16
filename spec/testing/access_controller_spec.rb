require 'spec_helper'

describe AccessController do

  describe "GET login" do
    it "displays a login form" do
      get :login
      expect(response.status).to eq 200
      expect(response).to render_template("login")
    end
  end

  describe "POST login with wrong password" do
    it "displays a login form with error" do
      post :attempt_login, :username => 'venguvengu', :password => '13efcdftgvb'
      expect(response.status).to eq 302
      expect(response).to be_redirect
      expect(flash[:notice]).to eq 'Invalid username/password combination.'
    end
  end

  describe "POST login with correct password" do
    it "should log you in" do
      post :attempt_login, :username => 'venguvengu', :password => '123456'
      expect(response.status).to eq 302
      expect(response).to be_redirect
      expect(session[:id]).to eq 1
      expect(session[:username]).to eq 'venguvengu'
      expect(flash[:notice]).to eq 'You are now logged in.'
    end
  end
end