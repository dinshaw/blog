require 'rails_helper'

RSpec.describe 'Posts' do
  # before { sign_in Fabricate :user }
  let(:post_1) { Fabricate :post }
  let(:post_2) { Fabricate :post }

  describe '#index' do
    before do
      post_1
      post_2
    end

    it 'displays posts' do
      get "/posts"
      assert_select '.posts' do
        assert_select '.post h2.title', post_1.title
        assert_select '.post h2.title', post_2.title
      end
    end
  end

  describe '#show' do
    it 'renders post body' do
      get "/posts/#{post_1.id}"

      assert_select '.post' do
        assert_select '.post h1', post_1.title
        assert_select '.post p', post_1.body
      end
    end
  end
end
