require 'spec_helper'

describe AdminUser do

  it "has a valid factory" do
    #FactoryGirl.create(:admin_user).should be_valid
    expect(FactoryGirl.create(:admin_user)).to be_valid
  end

  # it "is invalid without a password" do 
  #   expect(FactoryGirl.create(:admin_user, email: 'b@leagueofevil.org', password: nil)).not_to be_valid
  # end

  #let(:user) { FactoryGirl.create(:user) }

  # before do
  #   @user = AdminUser.new(email: "jl@leagueofevil.org", password: "123")
  # end

  # subject { @user }
  
  # it { should respond_to(:email) }
  # it { should respond_to(:password) }

  # it { should be_valid }

  # it "has a valid factory" do
  #   build(:email).should be_valid
  # end

  # it "is invalid without an email" do
  #   build(email: nil).should_not be_valid
  # end

end
