class SignInPage < SitePrism::Page 

  set_url('/users/sign_in')
  set_url_matcher(/\/users\/sign_in/)

  element :email_input, '#user_email'
  element :password_input, '#user_password'
  element :submit, "input[name='commit']"

end 