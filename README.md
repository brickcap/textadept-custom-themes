#Directions

1. Clone the repository
2. Extract the theme into the textadept/themes directory
3. Select the theme from view->select theme or ctrl+shift+t

#How to edit the theme

Every theme in *textadept* consits of three files

1. buffer.lua
2. lexer.lua
3. view.lua

lexer.lua is the one that contains the styles that will be used by the lexer in *textadept*.The lexer *api* consists of a rich set of predefined [styling tokens](http://foicica.com/textadept/api/lexer.html#Styles.and.Styling) that can be used to customize each and every aspect of the language tokens.One thing to note here is that the styles defined in lexer.lua will be shared globally by all the languages that are supported by text edit.There is no need to write seperate styles for every language.This makes it really easy to customize.

For instance

*l.style_comment* can be used to customize how comments are displayed in *textadept*.
*l.style_string*  can be used to customize how strings are displayed in *textadept*


#Themes

###Green Mango

Prominent comments, green strings,red keywords on white background and black text.

[!green mango](<img src="http://farm9.staticflickr.com/8259/8652376790_b059161726_b.jpg" width="824" height="576" alt="greenmango">)
