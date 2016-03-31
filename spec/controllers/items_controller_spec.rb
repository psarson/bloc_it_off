require 'rails_helper'
require 'Faker'

RSpec.describe ItemsController, type: :controller do

  before(:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  describe "POST #create" do
    it "returns http success" do
      post :create, user_id: @user.id, item: { name: Faker::Lorem.sentence }
      expect(response).to redirect_to(root_path)
    end

    it "increases the number of Item by 1" do
      expect { post :create, user_id: @user.id, item: {name: Faker::Lorem.sentence } }.to change(Item,:count).by(1)
    end

    it "assigns the new item to @item" do
        post :create, user_id: @user, item: { name: Faker::Lorem.sentence }
        expect(assigns(:item)).to eq Item.last
      end
    end

end
