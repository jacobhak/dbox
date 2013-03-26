feature "permission checks" do
  
  scenario "Users can sign in" do

    user = User.create!(email: "test@test.se", password: "secret11")
    user.valid?.should be_true
    visit '/users/sign_in'
    
    fill_in 'user_email', :with => 'test@test.se'
    fill_in 'user_password', :with => 'secret11'

    click_link_or_button "Sign in"
    page.should_not have_content "Invalid email or password."
  end
end