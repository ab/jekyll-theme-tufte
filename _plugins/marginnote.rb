# frozen_string_literal: true

require 'shellwords'

module Jekyll
  class RenderMarginNoteTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text.shellsplit
    end

    def render(context)
      "<label for='#{@text[0]}' class='margin-toggle'> &#8853;</label><input type='checkbox' id='#{@text[0]}' class='margin-toggle' checked/><span class='marginnote'>#{@text[1]} </span>"
    end
  end
end

Liquid::Template.register_tag('marginnote', Jekyll::RenderMarginNoteTag)

