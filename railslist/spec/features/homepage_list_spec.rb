require 'spec_helper'

feature "homepage splash" do
  before do
    @category = create(:category)
    @post = create(:post)
  end

  scenario "User sees a stunningly beautiful homepage" do
    visit root_path
    expect(page).to have_content @category.name
  end
end

feature "category posts view" do
  before do
    @category = create(:category)
    @post = create(:post)
  end

  scenario "User sees a list of posts in a category" do
    visit "/categories/1/posts"
    click_button "BUTTTTTTTTTT"
    expect(page).to have_content('Title')
  end
end

# feature "create post" do
#   scenario  "User can create a new post in a category" do
#     visit "/categories/1"
#     #click butttt link
#   end
# end
