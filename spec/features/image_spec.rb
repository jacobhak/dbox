feature "Feature Image" do
  
  before :each do
    @user = User.create!(email: "test@test.se", password: "secret11")
    @user.valid?.should be_true
    
    visit '/users/sign_in'
    
    fill_in 'user_email', :with => 'test@test.se'
    fill_in 'user_password', :with => 'secret11'

    click_link_or_button "Sign in"    
  end

  scenario "Users can sign in" do
    page.should_not have_content "Invalid email or password."
    page.should have_content @user.email
  end

  scenario "see upload page" do
    visit '/images/new'

    page.should_not have_content "You are not authorized to access this page."
  end

  scenario "submit a new image" do
    pending "I have no idea how to test this."
  end
end