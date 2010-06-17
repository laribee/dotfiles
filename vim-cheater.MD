# VIM Cheat Sheet

## File Manipulation

:e {path}     - Edit a file at {path}.  
:e!           - Edit the current file, discarding changes if they exist.  
gf            - Edit the file whose name is under or after the cursor.  
:r {path}     - Read and insert the contents of file at {path} after cursor.  

## Editing

A             - Enter insert mode at the end the current line.  
R             - Enter insert mode, replacing characters rather than inserting.  
U             - Undo all changes on a line.  
&gt;          - Indent.  
&lt;          - Unindent.  

## Navigation

G             - Goto line [count], default last line, on the first non-blank character.  
gg            - Goto line [count], default first line, on the first non-blank character.  
m{a-zA-Z}     - Set a mark named {a-zA-Z} at the cursor position  
\`{a-zA-Z}     - Go to the mark named {a-zA-Z}.  
:marks        - Display list of all marks.  
H,M,L         - Jump to top, middle or bottom of screen (respectively)  
(,)           - Jump to beginning - ( - or end - ) - of sentence.  

## Macros

q{a-zA-Z}     - Start recording macro named {a-zA-Z}.  
q             - Stop recording current macro.  
@{a-zA-Z}     - Run macro named {a-zA-Z}.  
