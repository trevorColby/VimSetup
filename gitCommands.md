## Commands To Know

#### ------------------------ Cursor Movement -------------------------
	*	h - move left
	*	j - move down
	*	k - move up
	*	l - move right
	*	w - jump by start of words (punctuation considered words)
	*	W - jump by words (spaces separate words)
	*	e - jump to end of words (punctuation considered words)
	*	E - jump to end of words (no punctuation)
	*	b - jump backward by words (punctuation considered words)
	*	B - jump backward by words (no punctuation)
	*	0 - (zero) start of line
	*	^ - first non-blank character of line
	*	$ - end of line
	*	G - Go To command (prefix with number - 5G goes to line 5)

#### ------------------------ Insert Commands -------------------------
	*	i - start insert mode at cursor
	*	I - insert at the beginning of the line
	*	a - append after the cursor
	*	A - append at the end of the line
	*	o - open (append) blank line below current line (no need to press return)
	*	O - open blank line above current line
	*	ea - append at end of word
	*	Esc - exit insert mode

#### ------------------------ Editing Commands ------------------------
	*	r - replace a single character (does not use insert mode)
	*	J - join line below to the current one
	*	cc - change (replace) an entire line
	*	cw - change (replace) to the end of word
	*	c$ - change (replace) to the end of line
	*	s - delete character at cursor and subsitute text
	*	S - delete line at cursor and substitute text (same as cc)
	*	xp - transpose two letters (delete and paste, technically)
	*	u - undo 
	*	. - repeat last command

#### ------------------------ Marking Txt Commands --------------------
	*	v - start visual mode, mark lines, then do command (such as y-yank)
	*	V - start Linewise visual mode
	*	o - move to other end of marked area
	*	Ctrl+v - start visual block mode
	*	O - move to Other corner of block
	*	aw - mark a word
	*	ab - a () block (with braces)
	*	aB - a {} block (with brackets)
	*	ib - inner () block
	*	iB - inner {} block
	*	Esc - exit visual mode
	
#### ------------------------ Visual Commands -------------------------
	*	> - shift right
	*	< - shift left
	*	y - yank (copy) marked text
	*	d - delete marked text
	*	~ - switch case

#### ------------------------ Cut & Paste Commands --------------------
	*	yy - yank (copy) a line
	*	2yy - yank 2 lines
	*	yw - yank word
	*	y$ - yank to end of line
	*	p - put (paste) the clipboard after cursor
	*	P - put (paste) before cursor
	*	dd - delete (cut) a line
	*	dw - delete (cut) the current word
	*	x - delete (cut) current character

#### ------------------------ Exiting Commands ------------------------
	*	:w - write (save) the file, but don't exit
	*	:wq - write (save) and quit
	*	:q - quit (fails if anything has changed)
	*	:q! - quit and throw away changes
	
#### ------------------------ Search/Replace --------------------------
	*	/pattern - search for pattern
	*	?pattern - search backward for pattern
	*	n - repeat search in same direction
	*	N - repeat search in opposite direction
	*	:%s/old/new/g - replace all old with new throughout file
	*	:%s/old/new/gc - replace all old with new throughout file with confirmations

#### ------------------------ Working W/ Multiple Files ---------------
	*	:e filename - Edit a file in a new buffer
	*	:bnext (or :bn) - go to next buffer
	*	:bprev (of :bp) - go to previous buffer
	*	:bd - delete a buffer (close a file)
	*	:sp filename - Open a file in a new buffer and split window
	*	ctrl+ws - Split windows
	*	ctrl+ww - switch between windows
	*	ctrl+wq - Quit a window
	*	ctrl+wv - Split windows vertically
#### ------------------------ Macros Commands -------------------------
	* Normal mode: 
	* q (followed by any alpha character to name buffer: note can paste it becuase it is same as clipboard) this starts recording keystrokes (any commands)
	*		     followed by 'q' to end recording, look in status line to check if still recording. To execute command again follow with @'bufferletter' or @@ for previous executed buffer
	* :g/'any pattern aka regex pattern'/normal @'buffer'    This allows you to 
	* :!g/'any regex pattern'/normal @'buffer' This allows you to apply a macro/buffer to anything not matching regex 
	* : (means you are in ex mode)
	*	:s mean substitute can apply to current line of current buffer(file)
	*	:%s means substitute all lines
	*	ctr+f while in ex mode can type ctr+f to get command history (similar to terminal previous command hist)
	*	:1,5s (this means apply sub to lines 1-5)
	*	:'<,'>s (apply sub to visual marker start to visual marker end: can apply to any markers but this is default marker set for visual mode)
	*	% in general means apply any command to whole page or range applies to all ex commands
	*	Use the normal command in Ex mode to execute the macro on multiple/all lines:
	*	Execute the macro stored in register a on lines 5 through 10.
		*	:5,10norm! @a
	*	Execute the macro stored in register a on lines 5 through the end of the file.
		*	:5,$norm! @a
	*	Execute the macro stored in register a on all lines.
		*	:%norm! @a
	*	Execute the macro store in register a on all lines matching pattern.
		*	:g/pattern/norm! @a
	*	To execute the macro on visually selected lines, press V and the j or k until the desired region is selected.
	*	Then type :norm! @a and observe the that following input line is shown.
		*	:'<,'>norm! @a
	*	Enter :help normal in vim to read more.
	
#### ------------------------- Fun Commands ----------------------------
	*	shift+k (with cursor on command in vim text) checks linux manual entry for that command: scripting application
	*	:browse e	Graphical file explorer
	*	:Sex	Split window and open integrated file explorer
	*	:yy (yank yank) p (paste) V(visual line mode) r(replace) (enter any key and replaces entire line with whatever key you press next)
	*	:ctr W = (resize a vim screen split to equal sizes)		
