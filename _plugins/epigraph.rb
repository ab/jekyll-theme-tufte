# frozen_string_literal: true

module Jekyll
  #
  # The epigraph tag provides a way to generate <blockquote> tags with epigraph
  # styling per tufte-css.
  #
  # For example:
  #
  #     {% epigraph Richard P. Feynman, <cite>"What Do You Care What Other People Think?"</cite> %}
  #       For a successful technology, reality must take precedence over public relations, for Nature cannot be fooled.
  #     {% endepigraph %}
  #
  # This will generate:
  #
  #     <div class="epigraph">
  #       <blockquote>
  #         <p> For a successful technology, reality must take precedence over public relations, for Nature cannot be fooled.</p>
  #         <footer>Richard P. Feynman, <cite>"What Do You Care What Other People Think?"</cite></footer>
  #       </blockquote>
  #     </div>
  #
  class EpigraphTag < Liquid::Block

    def initialize(tag_name, text, context)
      super

      @footer = text
    end

    def render(context)
      # call super to get content between start and end tags
      body = super

      if @footer && !@footer.empty?
        footer_html = "<footer>#{@footer}</footer>"
      else
        footer_html = ''
      end

      <<~HTML
        <div class="epigraph">
          <blockquote>
            <p>#{body}</p>
            #{footer_html}
          </blockquote>
        </div>
      HTML
    end
  end
end

Liquid::Template.register_tag('epigraph', Jekyll::EpigraphTag)
