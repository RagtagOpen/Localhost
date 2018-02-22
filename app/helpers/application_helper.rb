module ApplicationHelper
  def site_name
    "Localhost"
  end

  def cause_name
    "Localhost"
  end

  def site_hostname(request)
    request.host_with_port
  end

  def logo_light
    "logo-light.png"
  end

  def logo_dark
    "logo-dark.png"
  end

  def email_contact
    "localhost@ragtag.org"
  end

  def privacy_policy_link
    "https://github.com/RagtagOpen/localhost/blob/master/app/views/pages/privacy_policy.html.erb"
  end

  def bug_report_link
    "https://github.com/RagtagOpen/localhost/issues"
  end

  def github_link
    "https://github.com/RagtagOpen/localhost"
  end
end
