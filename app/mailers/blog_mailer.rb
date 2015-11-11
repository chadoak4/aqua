class BlogMailer < ApplicationMailer
  defaut from: "aquazest4change@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.blog_mailer.new_blog.subject
  #
  def new_blog(user)

    mail to: user.email, subject: "New Blog <%= blog.tite %>"
  end
end
