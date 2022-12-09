# frozen_string_literal: true

require 'shellwords'

module Jekyll
  # Liquid tag 'maincolumn-figure' used to add image data that fits within the
  # main column area of the layout
  # Usage {% maincolumn 'path/to/image' 'This is the caption' %}
  #
  class MainColumnTag < Liquid::Tag

    def initialize(tag_name, text, context)
      super
      args = text.shellsplit
      if args.length != 2
        raise Liquid::SyntaxError, "maincolumn expects 2 shell quoted args, parsed #{args.inspect}"
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

      "<figure><figcaption><span markdown='1'>#{@caption}</span></figcaption><img src='#{fullsrc}'/></figure>"
    end
  end
end

Liquid::Template.register_tag('maincolumn', Jekyll::MainColumnTag)
