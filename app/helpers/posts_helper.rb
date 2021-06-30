module PostsHelper
  def create_post_btn
    out = ''
    if user_signed_in?
      out << link_to('New Post', new_post_path, class:'py-2 d-none d-md-inline-block nav-link text-secondary fw-bolder')
    end
    out.html_safe
  end
end
