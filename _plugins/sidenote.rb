# frozen_string_literal: true

require 'shellwords'

module Jekyll
  # usage: {% sidenote 'idtag' 'Content of the note...' %}
  class SideNoteTag < Liquid::Tag

    def initialize(tag_name, text, context)
      super
      @text = text.shellsplit
      if @text.length != 2
        raise Liquid::SyntaxError, 'sidenote expects two shell-quoted arguments'
      end
    end

    def render(_context)
      [
        "<label for='#{@text.fetch(0)}' class='margin-toggle sidenote-number'></label>",
        "<input type='checkbox' id='#{@text.fetch(0)}' class='margin-toggle' checked/>",
        "<span class='sidenote'>#{@text.fetch(1)}</span>",
      ].join('')
    end
  end
end

Liquid::Template.register_tag('sidenote', Jekyll::SideNoteTag)
