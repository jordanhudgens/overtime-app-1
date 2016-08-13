require 'rails_helper'

RSpec.describe User, type: :model do
  # before do 
  # 	@user = User.create(email: "john@example.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "John", last_name: "Doe")
  # end
  let(:user) { create(:user) }
  describe "creation" do
  	it "can be created" do		 
  		expect(user).to be_valid
  	end
  	it "cannot be created without first_name and last_name" do 
  		user.first_name = nil
  		user.last_name = nil
  		expect(user).to be_invalid
  	end
  end
  describe "full_name method" do  
    it "combines the first and last name" do
      # expect(@user.full_name).to eq(@user.full_name)
      user
       expect(user.full_name).to eq("Smith, James")
      #puts @user.full_name 
    end
  end  
end
