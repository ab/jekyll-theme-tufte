# frozen_string_literal: true

require 'shellwords'

module Jekyll
  class RenderSideNoteTag < Liquid::Tag

    # usage: {% sidenote 'idtag' 'Content of the note...' %}
    def initialize(tag_name, text, context)
      super
      @text = text.shellsplit
    end

    def initialize(tag_name, text, context)
      super
      @text = text.shellsplit
      if @text.length != 2
        raise Liquid::SyntaxError, 'sidenote expects two shell-quoted arguments'
      end
    end

    def render(context)
      [
        "<label for='#{@text.fetch(0)}' class='margin-toggle sidenote-number'></label>",
        "<input type='checkbox' id='#{@text.fetch(0)}' class='margin-toggle' checked/>",
        "<span class='sidenote'>#{@text.fetch(1)}</span>",
      ].join('')
    end
  end
end

Liquid::Template.register_tag('sidenote', Jekyll::RenderSideNoteTag)
