-- Copyright 2007-2013 Mitchell mitchell.att.foicica.com. See LICENSE.
-- Green Mango
-- Contributed by Akshat Jiwan Sharma.
--You can reach me at akshat_fullmetal@yahoo.co.in
--Feel free to modify it in any way you want.


local l, color, style = lexer, lexer.color, lexer.style

l.colors = {

  black = color('00', '00', '00'),

  white = color('FF', 'FF', 'FF'),

  whitesmoke = color('F5','F5','F5'),

  yellowgreen = color('9A','CD','32'),

  tomato = color('FF','63','47'),

  limegreen = color('32','cd','32')

}

l.style_comment     = style{fore = l.colors.white,back = l.colors.yellowgreen, bold= true}
l.style_string      = style{fore = l.colors.limegreen, back= l.colors.white, bold= true }
l.style_keyword     = style { fore = l.colors.tomato,   italic      = true }
l.style_tag         = style { fore = l.colors.tomato,    bold      = true }
l.style_variable    = style{fore = l.colors.tomato, back= l.colors.white, italic = true}

-- Default styles.

local font_face = '!Bitstream Vera Sans Mono'
local font_size = 12
if WIN32 then
  font_face = '!Consolas'
elseif OSX then
  font_face = '!Monaco'
  font_size = 16
end


l.style_default = style{
font = font_face,
size = font_size,
fore= l.colors.black,
back= l.colors.white
}

l.style_line_number = style{fore=l.colors.white, back= l.colors.black,bold=true}
