class BlogMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.blog_mailer.new_blog.subject
  #
  def new_blog
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
