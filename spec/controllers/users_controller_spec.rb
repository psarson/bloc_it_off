require 'rails_helper'
include Faker

RSpec.describe UsersController, type: :controller do

  before(:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, { id: @user.id }
      expect(response).to have_http_status(:success)
    end
  end

end
