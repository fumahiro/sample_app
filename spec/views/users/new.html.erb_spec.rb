require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :name => "MyString",
      :name_roma => "MyString",
      :name_kana => "MyString",
      :mail => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_name[name=?]", "user[name]"
      assert_select "input#user_name_roma[name=?]", "user[name_roma]"
      assert_select "input#user_name_kana[name=?]", "user[name_kana]"
      assert_select "input#user_mail[name=?]", "user[mail]"
    end
  end
end
