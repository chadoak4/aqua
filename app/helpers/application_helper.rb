module ApplicationHelper
  def markdown(text)
    Markdown.new(text,:hard_wrap, :filter_html, :autolink).to_html.html_safe
  end
end
