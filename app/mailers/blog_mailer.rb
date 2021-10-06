class BlogMailer < ApplicationMailer
  def blog_mail(blog)
    @blog = blog
    mail to: "komiwork361@gmail.com", subject: "ブログ投稿の確認メール"
  end
end
