## Newthought tag will render anything in the tag with small caps
## Usage {% newthought Your text string here} will render a span
## YOUR TEXT STRING HERE (sort of, you know, small caps) if you are using the tufte.css file
#
# AB: the shellsplit stuff is gross but I'm too lazy to rewrite right now

module Jekyll
  class RenderNewThoughtTag < Liquid::Tag

require "shellwords"

    def initialize(tag_name, text, tokens)
      super
      @text = text.shellsplit
      if @text.length != 1
        raise SyntaxError, "newthought expects exactly 1 shell quoted text argument, parsed #{@text.inspect}"
      end
    end

    def render(context)
      "<span class='newthought'>#{@text[0]}</span>"
    end
  end
end

Liquid::Template.register_tag('newthought', Jekyll::RenderNewThoughtTag)
