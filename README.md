SpreeProductOrdering
====================

Drag'n'drop ordering with lazy load images and move on top button.

Example
=======
The `layout/admin.html.erb` must have a span inside div progress to show ordering feedback
```html
<div id="progress">
<%= image_tag 'spinner.gif' %>
<span> <%= t('loading') %>...</span>
</div>
```
**Note:** In `reorder.html.erb` you must set image dimensions either as width and height attributes or in CSS. Otherwise lazyload plugin might not work properly.

Links
=======

http://www.appelsiini.net/projects/lazyload

https://github.com/j-ulrich/jquery-simulate-ext

Copyright (c) 2010 [name of extension creator], released under the New BSD License
