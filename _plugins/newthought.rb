# frozen_string_literal: true

# The shellsplit stuff is gross but I'm too lazy to refactor

require 'shellwords'

module Jekyll
  #
  # The newthought tag renders anything in the tag with small caps.
  #
  # Usage: {% newthought 'Your text string here' %}
  #
  # This will produce YOUR TEXT STRING HERE in small caps using the .newthought
  # CSS class.
  #
  class RenderNewThoughtTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text.shellsplit
      if @text.length != 1
        raise Liquid::SyntaxError, "newthought expects exactly 1 shell quoted text argument, parsed #{@text.inspect}"
      end
    end

    def render(_context)
      "<span class='newthought'>#{@text.fetch(0)}</span>"
    end
  end
end

Liquid::Template.register_tag('newthought', Jekyll::RenderNewThoughtTag)
