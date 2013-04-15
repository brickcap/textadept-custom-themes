-- Copyright 2007-2013 Mitchell mitchell.att.foicica.com. See LICENSE.
-- Green Mango theme for Textadept.

local c = _SCINTILLA.constants
local buffer = buffer

buffer.multiple_selection = true
buffer.additional_selection_typing = true


buffer.rectangular_selection_modifier = (WIN32 or OSX) and c.SCMOD_ALT or c.SCMOD_SUPER

buffer:set_x_caret_policy(1, 20) -- CARET_SLOP
buffer:set_y_caret_policy(13, 1) -- CARET_SLOP | CARET_STRICT | CARET_EVEN


buffer.caret_fore = 0x808080
buffer.caret_line_visible = false



buffer.caret_line_back = 0x333333


-- Line Number Margin.

buffer.margin_width_n[0] = 2+4 * buffer:text_width(c.STYLE_LINENUMBER, '9')

-- Marker Margin.

buffer.margin_width_n[1] = 0 -- marker margin invisible

-- Fold Margin.

buffer.margin_type_n[2] = c.SC_MARGIN_SYMBOL
buffer.margin_width_n[2] = 10
buffer.margin_mask_n[2] = c.SC_MASK_FOLDERS
buffer.margin_sensitive_n[2] = true


buffer:set_fold_margin_colour(true, 0x1A1A1A)
buffer:set_fold_margin_hi_colour(true, 0x1A1A1A)

-- Annotations.

buffer.annotation_visible = c.ANNOTATION_BOXED

-- Other.
--buffer.buffered_draw = false
--buffer.two_phase_draw = false

-- Indentation Guides.

buffer.indentation_guides = c.SC_IV_LOOKBOTH

-- Fold Margin Markers.

buffer:marker_define(c.SC_MARKNUM_FOLDEROPEN, c.SC_MARK_ARROWDOWN)
buffer.marker_fore[c.SC_MARKNUM_FOLDEROPEN] = 0x666666
buffer.marker_back[c.SC_MARKNUM_FOLDEROPEN] = 0x666666
buffer:marker_define(c.SC_MARKNUM_FOLDER, c.SC_MARK_ARROW)
buffer.marker_fore[c.SC_MARKNUM_FOLDER] = 0x666666
buffer.marker_back[c.SC_MARKNUM_FOLDER] = 0x666666
buffer:marker_define(c.SC_MARKNUM_FOLDERSUB, c.SC_MARK_EMPTY)
buffer:marker_define(c.SC_MARKNUM_FOLDERTAIL, c.SC_MARK_EMPTY)
buffer:marker_define(c.SC_MARKNUM_FOLDEREND, c.SC_MARK_EMPTY)
buffer:marker_define(c.SC_MARKNUM_FOLDEROPENMID, c.SC_MARK_EMPTY)
buffer:marker_define(c.SC_MARKNUM_FOLDERMIDTAIL, c.SC_MARK_EMPTY)

-- Autocompletion.
--buffer.auto_c_cancel_at_start = false

buffer.auto_c_choose_single = true

-- Folding.

buffer.fold_flags = c.SC_FOLDFLAG_LINEAFTER_CONTRACTED

-- Line Wrapping.
-- Notifications.

buffer.mod_event_mask = c.SC_MOD_CHANGEFOLD
