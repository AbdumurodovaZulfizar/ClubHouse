# rubocop:disable Layout/LineLength, Layout/EndOfLine
module RegistrationsHelper
  def current_user_btn
    out = ''
    if user_signed_in?
      out << link_to(current_user.name, edit_user_registration_path, class: 'p-3 d-inline-block nav-link text-secondary fw-bolder')
    end
    out.html_safe
  end

  def sign_out_btn
    out = ''
    if user_signed_in?
      out << link_to('Sign Out', destroy_user_session_path, class: 'p-3 d-inline-block nav-link text-secondary fw-bolder')
    end
    out.html_safe
  end

  def sign_up_btn
    out = ''
    unless user_signed_in?
      out << link_to('Sign Up', new_user_registration_path, class: 'p-3 d-inline-block nav-link text-secondary fw-bolder')
    end
    out.html_safe
  end

  def log_in_btn
    out = ''
    unless user_signed_in?
      out << link_to('Log In', new_user_session_path, class: 'p-3 d-inline-block nav-link text-secondary fw-bolder')
    end
    out.html_safe
  end
end
# rubocop:enable Layout/LineLength, Layout/EndOfLine
