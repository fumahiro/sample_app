require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :name => "Name",
        :name_roma => "Name Roma",
        :name_kana => "Name Kana",
        :mail => "Mail"
      ),
      stub_model(User,
        :name => "Name",
        :name_roma => "Name Roma",
        :name_kana => "Name Kana",
        :mail => "Mail"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Name Roma".to_s, :count => 2
    assert_select "tr>td", :text => "Name Kana".to_s, :count => 2
    assert_select "tr>td", :text => "Mail".to_s, :count => 2
  end
end
