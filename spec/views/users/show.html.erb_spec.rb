require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    User.transaction_with do
      @user = assign(:user, User.create!(
        :name => "Name",
        :email => "Email"
      ))
    end
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
  end
end
