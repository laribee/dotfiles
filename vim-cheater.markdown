# VIM Cheat Sheet #

# File Manipulation #

\:e {path}     - Edit a file at {path}.  
\:e!           - Edit the current file, discarding changes if they exist.  
gf            - Edit the file whose name is under or after the cursor.  
\:r {path}     - Read and insert the contents of file at {path} after cursor.  

## Editing

A             - Enter insert mode at the end the current line.  
R             - Enter insert mode, replacing characters rather than inserting.  
U             - Undo all changes on a line.  
&gt;          - Indent.  
&lt;          - Unindent.  
I             - Move to first non-blank character of a line and go into insert mode.  


## Navigation

G             - Goto line [count], default last line, on the first non-blank character.  
gg            - Goto line [count], default first line, on the first non-blank character.  
m{a-zA-Z}     - Set a mark named {a-zA-Z} at the cursor position  
\`{a-zA-Z}    - Go to the mark named {a-zA-Z}.  
\:marks       - Display list of all marks.  
H,M,L         - Jump to top of screen.  
M             - Jump to middle of screen.  
L             - Jump to bottom of screen.  
(             - Jump to beginning of sentence.  
)             - Jump to end of sentence.  
zt            - Scroll current line to top. 
zb            - Scroll current line to bottom. 
zz            - Scroll current line to middle. 
;             - Repeat last movement. 
,             - Repeat last movement backwards. 
#             - Find previous instance of current word. 
*             - Find next instance of current word. 

## Macros

q{a-zA-Z}     - Start recording macro named {a-zA-Z}.  
q             - Stop recording current macro.  
@{a-zA-Z}     - Run macro named {a-zA-Z}.  


## Windows 

gh            - Place cursor on window to the right.  
gl            - Place cursor on window to the left.  
gj            - Place cursor on window to the top.  
gk            - Place cursor on window to the bottom.  
gq            - Close the current window.  
\:[N]sp       - Open another (horizontal) viewport.  
\:[N]vs       - Open another (vertical) viewport. 

## NERDTree

<Leader>t     - Open NERDTree.  
C             - Change tree root.  
cd            - Change the CWD to the selected dir.  
I             - Toggle display of hidden files.  
A             - Maximize/minimize NERDTree window.  
m             - Show menu.  
t             - Open file in new tab.  
T             - Open file in new tab silently.  
go            - Preview.  
i             - Open split.  
s             - Open vertical split.  
o             - Open and close node.  
O             - Recursively open and close node.  
P             - Navigate to root of tree.  
p             - Navigate to parent of current node.  

