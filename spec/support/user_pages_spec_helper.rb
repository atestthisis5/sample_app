

# Attempt to sign up with valid account information
def valid_signup_fill_in
  @user = FactoryGirl.build(:user) # return a new User instance
  fill_in "Name",         with: @user.name
  fill_in "Email",        with: @user.email
  fill_in "Password",     with: @user.password
  fill_in "Confirmation", with: @user.password
  # fill_in "Name",         with: "Example User"
  # fill_in "Email",        with: "user@example.com"
  # fill_in "Password",     with: "foobar"
  # fill_in "Confirmation", with: "foobar"
  @user
end

