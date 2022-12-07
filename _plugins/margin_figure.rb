# frozen_string_literal: true

require 'shellwords'

module Jekyll
  # Liquid tag 'marginfigure' used to add image data that fits within the main
  # column area of the layout
  # Usage {% marginfigure 'margin-id-whatever' 'path/to/image' 'This is the caption' %}
  #
  class MarginFigureTag < Liquid::Tag

    attr_reader :tag, :src, :caption

    def initialize(tag_name, text, context)
      super
      args = text.shellsplit

      if args.length != 3
        raise Liquid::SyntaxError, "marginfigure expects 3 shell quoted args, parsed #{args.inspect}"
      end

      @tag = args.fetch(0)
      @src = args.fetch(1)
      @caption = args.fetch(2)
    end

    def render(context)
      baseurl = context.registers[:site].config['baseurl']
      if src.start_with?('http://', 'https://', '//')
        fullsrc = src
      else
        fullsrc = "#{baseurl}/#{src}"
      end

      [
        "<label for='#{tag}' class='margin-toggle'>&#8853;</label>",
        "<input type='checkbox' id='#{tag}' class='margin-toggle' checked/>",
        "<span class='marginnote'><img class='fullwidth' src='#{fullsrc}'/><br>#{caption}</span>",
      ].join('')
    end
  end
end

Liquid::Template.register_tag('marginfigure', Jekyll::MarginFigureTag)
