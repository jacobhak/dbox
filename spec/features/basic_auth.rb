feature "Images" do

  background do
    User.create(email: "test@test.se", password: "secret")
  end

  scenario "Not signed in users cannot access images#index", js: true do
    visit '/sessions/new'
    
    fill_in 'Login', :with => 'test@test.se'
    fill_in 'Password', :with => 'secret'

    click_link "Sign in"
    page.should have_content "Success"
  end
end