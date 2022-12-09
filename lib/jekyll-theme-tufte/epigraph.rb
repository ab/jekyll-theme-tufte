# frozen_string_literal: true

require 'kramdown'

module Jekyll
  #
  # The epigraph tag provides a way to generate <blockquote> tags with epigraph
  # styling using tufte-css.
  #
  # Use <footer> and <cite> HTML tags within the block to add the footer
  # content.
  #
  # For example:
  #
  #     {% epigraph %}
  #       It was the best of times, it was the worst of times...
  #
  #       <footer>Charles Dickens, <cite>A Tale of Two Cities</cite></footer>
  #     {% endepigraph %}
  #
  # This will generate:
  #
  #     <div class="epigraph">
  #       <blockquote>
  #         <p>It was the best of times, it was the worst of times...</p>
  #
  #         <footer>Charles Dickens, <cite>A Tale of Two Cities</cite></footer>
  #       </blockquote>
  #     </div>
  #
  class EpigraphTag < Liquid::Block

    def initialize(tag_name, text, context)
      super

      if text && !text.empty?
        raise Liquid::SyntaxError, 'epigraph block takes no arguments'
      end
    end

    def render(context)
      # call super to get content between start and end tags
      body = super

      # render this as markdown
      body_html = Kramdown::Document.new(body).to_html

      <<~HTML
        <div class="epigraph">
          <blockquote>
            #{body_html.gsub("\n", "\n    ")}
          </blockquote>
        </div>
      HTML
    end
  end
end

Liquid::Template.register_tag('epigraph', Jekyll::EpigraphTag)
