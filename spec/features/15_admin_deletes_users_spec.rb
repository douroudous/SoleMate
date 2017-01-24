require "rails_helper"

  # [] As an admin
  # [] I want to delete the information of any user

feature "admin can delete a user" do

  let (:user) { FactoryGirl.create(:user) }
  let (:user1) { FactoryGirl.create(:user) }

  scenario "admin deletes another user successfully" do
    user1
    user.admin = true
    user.save

    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign In'

    visit shoes_path

    click_link 'List of Users'

    click_link 'Delete User'

    expect(page).to_not have_content user1.username

  end
end
