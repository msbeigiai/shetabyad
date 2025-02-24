module ApplicationHelper
  
  def find_first
    @tutorial.lessons.first 
  end
  
  def title(text)
    content_for :title, text
  end

  class HTMLWithPygments < Redcarpet::Render::HTML
    def block_code(code, language)
      Pygments.highlight(code, lexer: language)
    end
  end
  
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def resource_class
    devise_mapping.to
  end

  def markdown(text)
    renderer = HTMLWithPygments.new(hard_wrap: true, filter_html: false)
    options = {
      autolink: true, 
      no_intra_emphasis: true,
      fenced_code_blocks: true, 
      strikethrough: true,
      superscript: true,
      lax_html_blocks: true
    }
    marked = Redcarpet::Markdown.new(renderer, options)
    marked.render(text).html_safe
  end
end
