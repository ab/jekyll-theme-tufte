---
layout: post
title: Code Syntax Highlighting Test
---

Syntax highlighting is supported in both light mode and dark mode!


YAML:

```yaml
---
layout: page
full_width: true
nav_title: Layouts
title: Available Page Layouts
weight: 4

- One
- Two
- Three

&anchor foo: bar

*anchor
```

Ruby:
```ruby
raise NotImplementedError.new

# blah
module Foo
  class Omg
    def initialize()
      super
      @x = "The quick brown fox jumps over the lazy dog."
    end

    def add(x, y)
      return x + y
    end

    # say hello
    def hello
      puts "hello!"
    end
  end
end
```

HTML:
```html
<!-- comment -->
<html>
  <head><title>Test</title></head>
  <body>
    <h1>omg</h1>
    <div class="omg">
      <input type=checkbox checked/>
    </div>
  </body>
  <script type="text/javascript">
    function foo(e) {
        var x = 5 + 5;
        alert("Hello");
    }
  </script>
</html>
```

Java:
```java
// Comment
class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, World!");
    }
}
```

C:
```c
#include <stdio.h>

// Comment
int main() {
   printf("Hello, world!\n");
   return 0;
}
```
