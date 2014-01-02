include ApplicationHelper

def valid_signin(user)
   fill_in "Email",     with: user.email
   fill_in "Password",  with: user.password
   click_button "Sign in"
end

RSpec::Matchers.define :have_error_message do |message|
   match do |page|
      expect(page).to have_selector('div.alert.alert-error', text: message)
   end
end

RSpec::Matchers.define :not_have_error_message do
   match do |page|
      expect(page).not_to have_selector('div.alert.alert-error')
   end
end
