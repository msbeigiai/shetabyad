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
    renderer = HTMLWithPygments.new(hard_wrap: true, filter_html: true)
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
  
	def simple_format(text, html_options = {}, options = {})
		wrapper_tag = options.fetch(:wrapper_tag, :p)

		text = markdown(text) if options.fetch(:sanitize, true)
		paragraphs = split_paragraphs(text)

		if paragraphs.empty?
			content_tag(wrapper_tag, nil, html_options)
		else
			paragraphs.map! { |paragraph|
				content_tag(wrapper_tag, raw(paragraph), html_options)
			}.join("\n\n").html_safe
		end
	end
  
end
