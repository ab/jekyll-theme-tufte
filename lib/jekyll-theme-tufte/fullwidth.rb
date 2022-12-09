# frozen_string_literal: true

require 'shellwords'

module Jekyll
  # This has a fairly harmless hack that wraps the img tag in a div to prevent it from being
  # wrapped in a paragraph tag instead, which would totally fuck things up layout-wise
  # Usage {% fullwidth 'path/to/image' 'caption goes here in quotes' %}
  #
  class FullWidthTag < Liquid::Tag
    def initialize(tag_name, text, context)
      super
      args = text.shellsplit
      if args.length != 2
        raise Liquid::SyntaxError, "fullwidth expects 2 shell quoted args, parsed #{args.inspect}"
      end

      @src = args.fetch(0)
      @caption = args.fetch(1)
    end

    def render(context)
      baseurl = context.registers[:site].config['baseurl']

      if @src.start_with?('http://', 'https://', '//')
        fullsrc = @src
      else
        fullsrc = "#{baseurl}/#{@src}"
      end

      "<figure class='fullwidth'><img src='#{fullsrc}'/><figcaption>#{@caption}</figcaption></figure>"
    end
  end
end

Liquid::Template.register_tag('fullwidth', Jekyll::FullWidthTag)
