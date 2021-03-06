" Vim color file
"
" Maintainer:   Steven Oliver <oliver.steven@gmail.com>
" URL:          https://github.com/steveno/peaksea/
" Colors Order: #rrggbb
" Orig Author:  Pan, Shi Zhu

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = expand("<sfile>:t:r")

"{{{1 Light Background
if &background=='light'
    " LIGHT COLOR DEFINE START
    hi Normal       guifg=#000000   guibg=#e0e0e0   gui=NONE
    hi Search       guifg=NONE      guibg=#f8f8f8   gui=NONE
    hi Visual       guifg=NONE      guibg=#a6caf0   gui=NONE
    hi Cursor       guifg=#f0f0f0   guibg=#008000   gui=NONE
    hi Special      guifg=#907000   guibg=NONE      gui=NONE
    hi Comment      guifg=#606000   guibg=NONE      gui=NONE
    hi Number       guifg=#907000   guibg=NONE      gui=NONE
    hi Constant     guifg=#007068   guibg=NONE      gui=NONE
    hi StatusLine   guifg=fg        guibg=#a6caf0   gui=NONE
    hi LineNr       guifg=#686868   guibg=NONE      gui=NONE
    hi Question     guifg=fg        guibg=#d0d090   gui=NONE
    hi PreProc      guifg=#009030   guibg=NONE      gui=NONE
    hi Statement    guifg=#2060a8   guibg=NONE      gui=NONE
    hi Type         guifg=#0850a0   guibg=NONE      gui=NONE
    hi Todo         guifg=#800000   guibg=#e0e090   gui=NONE
    " NOTE THIS IS IN THE WARM SECTION
    hi Error        guifg=#c03000   guibg=NONE      gui=undercurl
    hi Identifier   guifg=#a030a0   guibg=NONE      gui=NONE
    hi ModeMsg      guifg=fg        guibg=#b0b0e0   gui=NONE
    hi VisualNOS    guifg=fg        guibg=#b0b0e0   gui=NONE
    hi SpecialKey   guifg=#1050a0   guibg=NONE      gui=NONE
    hi NonText      guifg=#002090   guibg=#d0d0d0   gui=NONE
    hi Directory    guifg=#a030a0   guibg=NONE      gui=NONE
    hi ErrorMsg     guifg=fg        guibg=#f0b090   gui=NONE
    hi MoreMsg      guifg=#489000   guibg=NONE      gui=NONE
    hi Title        guifg=#a030a0   guibg=NONE      gui=NONE
    hi WarningMsg   guifg=#b02000   guibg=NONE      gui=NONE
    hi WildMenu     guifg=fg        guibg=#d0d090   gui=NONE
    hi Folded       guifg=NONE      guibg=#b0e0b0   gui=NONE
    hi FoldColumn   guifg=fg        guibg=#90e090   gui=NONE
    hi DiffAdd      guifg=NONE      guibg=#b0b0e0   gui=NONE
    hi DiffChange   guifg=NONE      guibg=#e0b0e0   gui=NONE
    hi DiffDelete   guifg=#002090   guibg=#d0d0d0   gui=NONE
    hi DiffText     guifg=NONE      guibg=#c0e080   gui=NONE
    hi SignColumn   guifg=fg        guibg=#90e090   gui=NONE
    
    hi IncSearch        guifg=#f0f0f0   guibg=#806060   gui=NONE
    hi StatusLineNC     guifg=fg        guibg=#c0c0c0   gui=NONE
    hi VertSplit        guifg=fg        guibg=#c0c0c0   gui=NONE
    hi Underlined       guifg=#6a5acd   guibg=NONE      gui=underline
    hi Ignore           guifg=bg        guibg=NONE
    " NOTE THIS IS IN THE WARM SECTION
    if has('spell')
        hi SpellBad     guifg=NONE  guibg=NONE  guisp=#c03000
        hi SpellCap     guifg=NONE  guibg=NONE  guisp=#2060a8
        hi SpellRare    guifg=NONE  guibg=NONE  guisp=#a030a0
        hi SpellLocal   guifg=NONE  guibg=NONE  guisp=#007068
    endif
    hi Pmenu            guifg=fg        guibg=#e0b0e0
    hi PmenuSel         guifg=#f0f0f0   guibg=#806060   gui=NONE
    hi PmenuSbar        guifg=fg        guibg=#c0c0c0   gui=NONE
    hi PmenuThumb       guifg=fg        guibg=#c0e080   gui=NONE
    hi TabLine          guifg=fg        guibg=#c0c0c0   gui=NONE
    hi TabLineFill      guifg=fg        guibg=#c0c0c0   gui=NONE
    hi TabLineSel       guifg=fg        guibg=NONE      gui=NONE
    hi CursorColumn     guifg=NONE      guibg=#f0b090
    hi CursorLine       guifg=NONE      guibg=NONE      gui=underline
    hi MatchParen       guifg=NONE      guibg=#c0e080

    " LIGHT COLOR DEFINE END
    hi Ignore       gui=NONE
    if has('spell')
        hi SpellBad     gui=undercurl
        hi SpellCap     gui=undercurl
        hi SpellRare    gui=undercurl
        hi SpellLocal   gui=undercurl
    endif
    hi TabLine      gui=underline
    hi TabLineFill  gui=underline
    hi CursorLine   gui=underline

    " For reversed stuffs, clear the reversed prop and set the bold prop again
    hi IncSearch        gui=bold
    hi StatusLine       gui=bold
    hi StatusLineNC     gui=bold
    hi VertSplit        gui=bold
    hi Visual           gui=bold

    " Enable the bold property
    hi Question     gui=bold
    hi DiffText     gui=bold
    hi Statement    gui=bold
    hi Type         gui=bold
    hi MoreMsg      gui=bold
    hi ModeMsg      gui=bold
    hi NonText      gui=bold
    hi Title        gui=bold
    hi DiffDelete   gui=bold
    hi TabLineSel   gui=bold

    " gui define for background=light end here

    " generally, a dumb terminal is dark, we assume the light terminal has 256
    " color support.
    if &t_Co==256
        " 256color light terminal support here
        hi Normal           ctermfg=16      ctermbg=254     cterm=NONE
        hi Search           ctermfg=NONE    ctermbg=231     cterm=NONE
        hi Visual           ctermfg=NONE    ctermbg=153     cterm=NONE
        hi Cursor           ctermfg=255     ctermbg=28      cterm=NONE
        hi Special          ctermfg=94      ctermbg=NONE    cterm=NONE
        hi Comment          ctermfg=58      ctermbg=NONE    cterm=NONE
        hi Number           ctermfg=94      ctermbg=NONE    cterm=NONE
        hi Constant         ctermfg=23      ctermbg=NONE    cterm=NONE
        hi StatusLine       ctermfg=fg      ctermbg=153     cterm=NONE
        hi LineNr           ctermfg=242     ctermbg=NONE    cterm=NONE
        hi Question         ctermfg=fg      ctermbg=186     cterm=NONE
        hi PreProc          ctermfg=29      ctermbg=NONE    cterm=NONE
        hi Statement        ctermfg=25      ctermbg=NONE    cterm=NONE
        hi Type             ctermfg=25      ctermbg=NONE    cterm=NONE
        hi Todo             ctermfg=88      ctermbg=186     cterm=NONE
        " NOTE THIS IS IN THE WARM SECTION
        hi Error            ctermfg=130     ctermbg=NONE    cterm=NONE
        hi Identifier       ctermfg=133     ctermbg=NONE    cterm=NONE
        hi ModeMsg          ctermfg=fg      ctermbg=146     cterm=NONE
        hi VisualNOS        ctermfg=fg      ctermbg=146     cterm=NONE
        hi SpecialKey       ctermfg=25      ctermbg=NONE    cterm=NONE
        hi NonText          ctermfg=18      ctermbg=252     cterm=NONE
        hi Directory        ctermfg=133     ctermbg=NONE    cterm=NONE
        hi ErrorMsg         ctermfg=fg      ctermbg=216     cterm=NONE
        hi MoreMsg          ctermfg=64      ctermbg=NONE    cterm=NONE
        hi Title            ctermfg=133     ctermbg=NONE    cterm=NONE
        hi WarningMsg       ctermfg=124     ctermbg=NONE    cterm=NONE
        hi WildMenu         ctermfg=fg      ctermbg=186     cterm=NONE
        hi Folded           ctermfg=NONE    ctermbg=151     cterm=NONE
        hi FoldColumn       ctermfg=fg      ctermbg=114     cterm=NONE
        hi DiffAdd          ctermfg=NONE    ctermbg=146     cterm=NONE
        hi DiffChange       ctermfg=NONE    ctermbg=182     cterm=NONE
        hi DiffDelete       ctermfg=18      ctermbg=252     cterm=NONE
        hi DiffText         ctermfg=NONE    ctermbg=150     cterm=NONE
        hi SignColumn       ctermfg=fg      ctermbg=114     cterm=NONE
        hi IncSearch        ctermfg=255     ctermbg=95      cterm=NONE
        hi StatusLineNC     ctermfg=fg      ctermbg=250     cterm=NONE
        hi VertSplit        ctermfg=fg      ctermbg=250     cterm=NONE
        hi Underlined       ctermfg=62      ctermbg=NONE    cterm=underline
        hi Ignore           ctermfg=bg      ctermbg=NONE
        " NOTE THIS IS IN THE WARM SECTION
        if has('spell')
            if 0
                hi SpellBad     cterm=undercurl ctermbg=NONE    ctermfg=130
                hi SpellCap     cterm=undercurl ctermbg=NONE    ctermfg=25
                hi SpellRare    cterm=undercurl ctermbg=NONE    ctermfg=133
                hi SpellLocal   cterm=undercurl ctermbg=NONE    ctermfg=23
            else
                hi SpellBad     cterm=undercurl ctermbg=NONE    ctermfg=NONE
                hi SpellCap     cterm=undercurl ctermbg=NONE    ctermfg=NONE
                hi SpellRare    cterm=undercurl ctermbg=NONE    ctermfg=NONE
                hi SpellLocal   cterm=undercurl ctermbg=NONE    ctermfg=NONE
            endif
        endif
        hi Pmenu        ctermfg=fg      ctermbg=182
        hi PmenuSel     ctermfg=255     ctermbg=95      cterm=NONE
        hi PmenuSbar    ctermfg=fg      ctermbg=250     cterm=NONE
        hi PmenuThumb   ctermfg=fg      ctermbg=150     cterm=NONE
        hi TabLine      ctermfg=fg      ctermbg=250     cterm=NONE
        hi TabLineFill  ctermfg=fg      ctermbg=250     cterm=NONE
        hi TabLineSel   ctermfg=fg      ctermbg=NONE    cterm=NONE
        hi CursorColumn ctermfg=NONE    ctermbg=216
        hi CursorLine   ctermfg=NONE    ctermbg=NONE    cterm=underline
        hi MatchParen   ctermfg=NONE    ctermbg=150

        hi TabLine      cterm=underline
        hi TabLineFill  cterm=underline
        hi CursorLine   cterm=underline

        " For reversed stuffs, clear the reversed prop and set the bold prop again
        hi IncSearch    cterm=bold
        hi StatusLine   cterm=bold
        hi StatusLineNC cterm=bold
        hi VertSplit    cterm=bold
        hi Visual       cterm=bold
        hi NonText      cterm=bold
        hi Question     cterm=bold
        hi Title        cterm=bold
        hi DiffDelete   cterm=bold
        hi DiffText     cterm=bold
        hi Statement    cterm=bold
        hi Type         cterm=bold
        hi MoreMsg      cterm=bold
        hi ModeMsg      cterm=bold
        hi TabLineSel   cterm=bold
    endif " t_Co
"{{{1 Dark Background
elseif &background=='dark'
    hi Normal           guifg=#d0d0d0   guibg=#202020   gui=NONE
    hi Comment          guifg=#d0d090   guibg=NONE      gui=NONE
    hi Constant         guifg=#80c0e0   guibg=NONE      gui=NONE
    hi Number           guifg=#e0c060   guibg=NONE      gui=NONE
    hi Identifier       guifg=#f0c0f0   guibg=NONE      gui=NONE
    hi Statement        guifg=#c0d8f8   guibg=NONE      gui=NONE
    hi PreProc          guifg=#60f080   guibg=NONE      gui=NONE
    hi Type             guifg=#b0d0f0   guibg=NONE      gui=NONE
    hi Special          guifg=#e0c060   guibg=NONE      gui=NONE
    hi Error            guifg=#f08060   guibg=NONE      gui=undercurl
    hi Todo             guifg=#800000   guibg=#d0d090   gui=NONE
    hi Search           guifg=NONE      guibg=#800000   gui=NONE
    hi Visual           guifg=#000000   guibg=#a6caf0   gui=NONE
    hi Cursor           guifg=#000000   guibg=#00f000   gui=NONE
    " NOTE THIS IS IN THE COOL SECTION
    hi StatusLine       guifg=#000000   guibg=#a6caf0   gui=NONE
    hi LineNr           guifg=#b0b0b0   guibg=#333435   gui=NONE
    hi Question         guifg=#000000   guibg=#d0d090   gui=NONE
    hi ModeMsg          guifg=fg        guibg=#000080   gui=NONE
    hi VisualNOS        guifg=fg        guibg=#000080   gui=NONE
    hi SpecialKey       guifg=#b0d0f0   guibg=NONE      gui=NONE
    hi NonText          guifg=#6080f0   guibg=#101010   gui=NONE
    hi Directory        guifg=#80c0e0   guibg=NONE      gui=NONE
    hi ErrorMsg         guifg=#d0d090   guibg=#800000   gui=NONE
    hi MoreMsg          guifg=#c0e080   guibg=NONE      gui=NONE
    hi Title            guifg=#f0c0f0   guibg=NONE      gui=NONE
    hi WarningMsg       guifg=#f08060   guibg=NONE      gui=NONE
    hi WildMenu         guifg=#000000   guibg=#d0d090   gui=NONE
    hi Folded           guifg=NONE      guibg=#004000   gui=NONE
    hi FoldColumn       guifg=#e0e0e0   guibg=#008000   gui=NONE
    hi DiffAdd          guifg=NONE      guibg=#000080   gui=NONE
    hi DiffChange       guifg=NONE      guibg=#800080   gui=NONE
    hi DiffDelete       guifg=#6080f0   guibg=#202020   gui=NONE
    hi DiffText         guifg=#000000   guibg=#c0e080   gui=NONE
    hi SignColumn       guifg=#e0e0e0   guibg=#008000   gui=NONE
    hi IncSearch        guifg=#000000   guibg=#d0d0d0   gui=NONE
    hi StatusLineNC     guifg=#000000   guibg=#c0c0c0   gui=NONE
    hi VertSplit        guifg=#000000   guibg=#c0c0c0   gui=NONE
    hi Underlined       guifg=#80a0ff   guibg=NONE      gui=underline
    hi Ignore           guifg=#000000   guibg=NONE
    " NOTE THIS IS IN THE COOL SECTION
    if has('spell')
        hi SpellBad     guifg=NONE  guibg=NONE  guisp=#f08060
        hi SpellCap     guifg=NONE  guibg=NONE  guisp=#6080f0
        hi SpellRare    guifg=NONE  guibg=NONE  guisp=#f0c0f0
        hi SpellLocal   guifg=NONE  guibg=NONE  guisp=#c0d8f8
    endif
    hi Pmenu            guifg=fg        guibg=#800080
    hi PmenuSel         guifg=#000000   guibg=#d0d0d0   gui=NONE
    hi PmenuSbar        guifg=fg        guibg=#000080   gui=NONE
    hi PmenuThumb       guifg=fg        guibg=#008000   gui=NONE
    hi TabLine          guifg=fg        guibg=#008000   gui=NONE
    hi TabLineFill      guifg=fg        guibg=#008000   gui=NONE
    hi TabLineSel       guifg=fg        guibg=NONE      gui=NONE
    hi CursorColumn     guifg=NONE      guibg=#800000   gui=NONE
    hi CursorLine       guifg=NONE      guibg=NONE      gui=underline
    hi MatchParen       guifg=NONE      guibg=#800080
    " DARK COLOR DEFINE END

    hi Ignore   gui=NONE
    if has('spell')
        hi SpellBad     gui=undercurl
        hi SpellCap     gui=undercurl
        hi SpellRare    gui=undercurl
        hi SpellLocal   gui=undercurl
    endif
    hi TabLine      gui=underline
    hi TabLineFill  gui=underline
    hi Underlined   gui=underline
    hi CursorLine   gui=underline

    " gui define for background=dark end here
    if &t_Co==256
        " 256color dark terminal support here
        hi Normal           ctermfg=252     ctermbg=234     cterm=NONE
        hi Comment          ctermfg=186     ctermbg=NONE    cterm=NONE
        hi Constant         ctermfg=110     ctermbg=NONE    cterm=NONE
        hi Number           ctermfg=179     ctermbg=NONE    cterm=NONE
        hi Identifier       ctermfg=219     ctermbg=NONE    cterm=NONE
        hi Statement        ctermfg=153     ctermbg=NONE    cterm=NONE
        hi PreProc          ctermfg=84      ctermbg=NONE    cterm=NONE
        hi Type             ctermfg=153     ctermbg=NONE    cterm=NONE
        hi Special          ctermfg=179     ctermbg=NONE    cterm=NONE
        hi Error            ctermfg=209     ctermbg=NONE    cterm=NONE
        hi Todo             ctermfg=88      ctermbg=186     cterm=NONE
        hi Search           ctermfg=NONE    ctermbg=88      cterm=NONE
        hi Visual           ctermfg=16      ctermbg=153     cterm=NONE
        hi Cursor           ctermfg=16      ctermbg=46      cterm=NONE
        " NOTE THIS IS IN THE COOL SECTION
        hi StatusLine       ctermfg=16      ctermbg=153     cterm=NONE
        hi LineNr           ctermfg=249     ctermbg=NONE    cterm=NONE
        hi Question         ctermfg=16      ctermbg=186     cterm=NONE
        hi ModeMsg          ctermfg=fg      ctermbg=18      cterm=NONE
        hi VisualNOS        ctermfg=fg      ctermbg=18      cterm=NONE
        hi SpecialKey       ctermfg=153     ctermbg=NONE    cterm=NONE
        hi NonText          ctermfg=69      ctermbg=233     cterm=NONE
        hi Directory        ctermfg=110     ctermbg=NONE    cterm=NONE
        hi ErrorMsg         ctermfg=186     ctermbg=88      cterm=NONE
        hi MoreMsg          ctermfg=150     ctermbg=NONE    cterm=NONE
        hi Title            ctermfg=219     ctermbg=NONE    cterm=NONE
        hi WarningMsg       ctermfg=209     ctermbg=NONE    cterm=NONE
        hi WildMenu         ctermfg=16      ctermbg=186     cterm=NONE
        hi Folded           ctermfg=NONE    ctermbg=22      cterm=NONE
        hi FoldColumn       ctermfg=254     ctermbg=28      cterm=NONE
        hi DiffAdd          ctermfg=NONE    ctermbg=18      cterm=NONE
        hi DiffChange       ctermfg=NONE    ctermbg=90      cterm=NONE
        hi DiffDelete       ctermfg=69      ctermbg=234     cterm=NONE
        hi DiffText         ctermfg=16      ctermbg=150     cterm=NONE
        hi SignColumn       ctermfg=254     ctermbg=28      cterm=NONE
        hi IncSearch        ctermfg=16      ctermbg=252     cterm=NONE
        hi StatusLineNC     ctermfg=16      ctermbg=250     cterm=NONE
        hi VertSplit        ctermfg=16      ctermbg=250     cterm=NONE
        hi Underlined       ctermfg=111     ctermbg=NONE    cterm=underline 
        hi Ignore           ctermfg=16      ctermbg=NONE
        " NOTE THIS IS IN THE COOL SECTION
        if has('spell')
            if 0
                hi SpellBad     cterm=undercurl ctermbg=NONE    ctermfg=209
                hi SpellCap     cterm=undercurl ctermbg=NONE    ctermfg=69
                hi SpellRare    cterm=undercurl ctermbg=NONE    ctermfg=219
                hi SpellLocal   cterm=undercurl ctermbg=NONE    ctermfg=153
            else
                hi SpellBad     cterm=undercurl ctermbg=NONE    ctermfg=NONE
                hi SpellCap     cterm=undercurl ctermbg=NONE    ctermfg=NONE
                hi SpellRare    cterm=undercurl ctermbg=NONE    ctermfg=NONE
                hi SpellLocal   cterm=undercurl ctermbg=NONE    ctermfg=NONE
            endif
        endif
        hi Pmenu            ctermfg=fg      ctermbg=90
        hi PmenuSel         ctermfg=16      ctermbg=252     cterm=NONE
        hi PmenuSbar        ctermfg=fg      ctermbg=18      cterm=NONE
        hi PmenuThumb       ctermfg=fg      ctermbg=28      cterm=NONE
        hi TabLine          ctermfg=fg      ctermbg=28      cterm=NONE
        hi TabLineFill      ctermfg=fg      ctermbg=28      cterm=NONE
        hi TabLineSel       ctermfg=fg      ctermbg=NONE    cterm=NONE
        hi CursorColumn     ctermfg=NONE    ctermbg=88      cterm=NONE
        hi CursorLine       ctermfg=NONE    ctermbg=NONE    cterm=underline
        hi MatchParen       ctermfg=NONE    ctermbg=90
        hi TabLine          cterm=underline
        hi TabLineFill      cterm=underline
        hi Underlined       cterm=underline
        hi CursorLine       cterm=underline
    endif "t_Co
endif
"}}}1

"{{{1 Links
hi link     String      Constant
" Character must be different from strings because in many languages
" (especially C, C++) a 'char' variable is scalar while 'string' is pointer,
" mistaking a 'char' for a 'string' will cause disaster!
hi link     Character   Number
hi link     SpecialChar LineNr
hi link     Tag         Identifier
hi link     cCppOut     LineNr
" The following are not standard hi links, these are used by DrChip
hi link     Warning     MoreMsg
hi link     Notice      Constant
" These are used by Calendar
hi link     CalToday    PreProc
" These are used by TagList
hi link     MyTagListTagName    IncSearch
hi link     MyTagListTagScope   Constant
"}}}1

" vim:et:nosta:sw=2:ts=4:
