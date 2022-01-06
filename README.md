# vim-antidote

## Description

This plugin interfaces Vim with the [TeXtidote][TeXtidote] grammar checker.  TeXtidote is an open source spelling, grammar and style checker for multiple languages based on LanguageTool.  TeXtidote is built on top of LanguageTool and is able to remove LaTeX and Markdown markup before grammar checking, while keeping track of the relative position of words between the original and "clean text". In short, TeXtidote is a version of LanguageTool made blind to LaTeX and Markdown markup.

The plugin [Vim-LanguageTool][Vim-LanguageTool] is a full-featured interface of LanguageTool with Vim.  This plugin offers the same clean interface based on TeXtidote instead of LanguageTool. As a consquences, all the errors based on LaTeX or Markdown markup are skipped.


It provides a new :Antidote and :TeXtidote family of commands and (recommended) mappings.


## Installation

Install using your favorite package manager, or use Vim's built-in package
support:

    mkdir -p ~/.vim/pack/PatrBal/start
    cd ~/.vim/pack/PatrBal/start
    git clone https://github.com/PatrBal/vim-TeXtidote
    vim -u NONE -c "helptags vim-antidote/doc" -c q


## Usage
 - :[range]TeXtidoteToggle

## Features
 - Spellcheck of either the entire buffer or part of it.
 - Validated corrections in Antidote are reimported in Vim.
 - Corrections of TeXtidote are displayed in the default brower.
 - Show definition in Antidote of the current word.

## Open tasks
 - [ ] Add support for Windows and Linux
 - [ ] Highlight grammar and spelling mistakes of TeXtidote in the current buffer and populate the location list, as does the plugin [Vim-LanguageTool] for LanguageTool.


## License

Copyright (c) Patrick Ballard.  Distributed under the same terms as Vim itself.
See `:help license`.

[TeXtidote]: https://sylvainhalle.github.io/textidote
[Vim-LanguageTool]: https://github.com/dpelle/vim-LanguageTool

