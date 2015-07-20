class SignUPPage < SitePrism::Page  

  set_url('/users/sign_up')
  set_url_matcher(/\/users\/sign_up/)

  element :input_name, '#user_name'
  element :input_email, '#user_email'
  element :input_password, '#user_password'
  element :input_password_confirmation, '#user_password_confirmation'
  element :submit, "input[name='commit']"

end