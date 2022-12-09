# frozen_string_literal: true

require 'shellwords'

module Jekyll
  # usage: {% marginnote 'idtag' 'Content of the note...' %}
  class MarginNoteTag < Liquid::Tag

    def initialize(tag_name, text, context)
      super
      @text = text.shellsplit
      if @text.length != 2
        raise Liquid::SyntaxError, 'marginnote expects two shell-quoted arguments'
      end
    end

    def render(_context)
      [
        "<label for='#{@text.fetch(0)}' class='margin-toggle'> &#8853;</label>",
        "<input type='checkbox' id='#{@text.fetch(0)}' class='margin-toggle' checked/>",
        "<span class='marginnote'>#{@text.fetch(1)}</span>",
      ].join('')
    end
  end
end

Liquid::Template.register_tag('marginnote', Jekyll::MarginNoteTag)
