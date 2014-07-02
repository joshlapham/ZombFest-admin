require 'spec_helper'

describe SocialMediaLink do

  it "has a valid factory" do
    expect(FactoryGirl.create(:social_media_link)).to be_valid
  end

end
