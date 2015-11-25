require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "Name",
      :name_roma => "Name Roma",
      :name_kana => "Name Kana",
      :mail => "Mail"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Name Roma/)
    rendered.should match(/Name Kana/)
    rendered.should match(/Mail/)
  end
end
