require 'spec_helper'

describe Event do

  it "has a valid factory" do
    expect(FactoryGirl.create(:event)).to be_valid
  end

end
