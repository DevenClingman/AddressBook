module ApplicationHelper
  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert
      alert_generator alert
    end
  end

  def alert_generator msg
    js add_gritter(msg, title: "Address Book", sticky: false, time: 2000)
  end

  def nav_links_right
    if user_signed_in?
      ("<li>".html_safe + (link_to "Edit Account", edit_user_registration_path) + "</li>".html_safe) +
      ("<li>".html_safe + (link_to "Logout", destroy_user_session_path, method: :delete) + "</li>".html_safe)
    else
      ("<li>".html_safe + (link_to "Login", new_user_session_path) + "</li>".html_safe) +
      ("<li>".html_safe + (link_to "Register", new_user_registration_path) + "</li>".html_safe)
    end
  end

  def nav_links_left
    if current_user
      link_to "Welcome #{current_user.first_name}", root_path
    else
      "Welcome".html_safe
    end
  end

  def copyright_generator
    ClingmanViewTool::Renderer.copyright "Deven Clingman", "All rights reserved"
  end
end
