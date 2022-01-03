" Description: Spellcheck with either Antidote.app or TeXtidote from Vim
" Author: Patrick Ballard <patrick.ballard.paris@gmail.com>
" License: MIT



if !exists('g:textidote_first_language')
	let g:textidote_first_language = ''
endif

if g:textidote_first_language == ''
	let g:antidote_textidote_first_language_option = ''
elseif g:antidote_textidote_first_language == 'de' || g:antidote_textidote_first_language == 'de_AT' || g:antidote_textidote_first_language == 'de_CH' || g:antidote_textidote_first_language == 'en' || g:antidote_textidote_first_language == 'de_UK' || g:antidote_textidote_first_language == 'de_CA' || g:antidote_textidote_first_language == 'es' || g:antidote_textidote_first_language == 'fr' || g:antidote_textidote_first_language == 'nl' || g:antidote_textidote_first_language == 'pt' || g:antidote_textidote_first_language == 'pl'
	let g:antidote_textidote_first_language_option = ' --firstlang ' . g:antidote_textidote_first_language
else
	echom 'Unknown first language!'
	finish
endif

if !has('python3')
	echomsg "Vim-Antidote unavailable: unable to load Python." |
	finish
endif

" Get default browser
" let g:defaultBrowser = system("defaults read ~/Library/Preferences/com.apple.LaunchServices/com.apple.launchservices.secure | awk -F\'\"\' \'/http;/{print window[(NR)-1]}{window[NR]=$2}\'")
" if g:defaultBrowser =~ 'safari' || g:defaultBrowser == ''
" 	"if Safari is the only Browser installed or if another Browser is installed and has never had a default Browser set, then by default nothing will be returned by the "defaults ..." command, and this means Safari is the default Browser
" 	let g:defaultBrowser = 'Safari'
" elseif g:defaultBrowser =~ 'chrome'
" 	let g:defaultBrowser = 'Google Chrome'
" elseif g:defaultBrowser =~ 'firefox'
" 	let g:defaultBrowser = 'Firefox'
" else
" 	echom "Unknown default browser."
" 	finish
" endif

let g:scriptPath = fnamemodify(resolve(expand('<sfile>:p')), ':h') . '/openBrowser.py'

" TeXtidote spellchecking
vnoremap <silent> <Leader>te :<C-U>call textidote#VisualTeXtidote()<CR>
nnoremap <silent> <Leader>te :call textidote#NormalTeXtidote()<CR>
command -range=% TeXtidote call textidote#CommandTeXtidote(<line1>,<line2>)

