# Preview all emails at http://localhost:3000/rails/mailers/blog_mailer
class BlogMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/blog_mailer/new_blog
  def new_blog
    BlogMailer.new_blog
  end

end
