require 'spec_helper'

describe NewsItem do

  it "has a valid factory" do
    expect(FactoryGirl.create(:news_item)).to be_valid
  end

end
