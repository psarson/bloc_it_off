require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  before(:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  describe "POST #create" do
    it "returns http success" do
      post :create, item: { name: Lorem.sentence }
      expect(response).to have_http_status(:success)
    end

    it "increases the number of Item by 1" do
      expect { post :create, item: {name: Lorem.sentence } }.to change(Item,:count).by(1)
    end

    it "assigns the new item to @item" do
        post :create, item: { name: Lorem.sentence }
        expect(assigns(:item)).to eq Item.last
      end
    end

end
