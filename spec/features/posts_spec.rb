require 'feature_helper'

describe 'Posts', feature: true do
  before do
    sign_in_user
  end

  it 'displays a list of blog posts' do
    visit index_path
    expect(page).to have_content('MyString')
  end

end
