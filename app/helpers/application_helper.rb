module ApplicationHelper
  
  def find_first
    @tutorial.lessons.first 
  end

  class HTMLWithPygments < Redcarpet::Render::HTML
    def block_code(code, language)
      Pygments.highlight(code, lexer: language)
    end
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
