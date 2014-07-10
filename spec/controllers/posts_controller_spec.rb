require 'rails_helper'

RSpec.describe PostsController, :type => :controller do
  let(:post) { Fabricate :post }

  describe "GET 'index'" do
    before { get 'index'}

    it "returns http success" do
      expect(response).to be_success
    end

    it 'assigns @posts' do
      post
      expect(assigns[:posts].count).to eq 1
    end
  end

  describe "GET 'show'" do
    before { get 'show', id: post.id }
    it "returns http success" do
      expect(response).to be_success
    end
  end


end
