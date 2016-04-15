require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    User.transaction_with do
      @user = assign(:user, User.create!(
        :name => "MyString",
        :email => "MyString"
      ))
    end
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_email[name=?]", "user[email]"
    end
  end
end
