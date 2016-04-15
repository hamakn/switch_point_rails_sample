require 'rails_helper'
require 'json'

RSpec.describe "Users", type: :request do
  let(:params) do
    {}
  end

  let(:env) do
    {}
  end

  describe "GET /users" do
    it "works! (now write some real specs)" do
      get users_path, params, env
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /users" do
    let(:name) { "hoge" }
    let(:params) do
      {
        user: { name: name, email: "hoge@test.test" },
      }
    end

    context "CONTENT_TYPE: application/json" do
      let(:env) do
        {
          CONENT_TYPE: "application/json",
          ACCEPT: "application/json",
        }
      end

      it "returns new user" do
        post users_path, params, env
        expect(response).to have_http_status(201)

        user = JSON.parse response.body
        expect(user["name"]).to eq(name)
      end
    end
  end
end
