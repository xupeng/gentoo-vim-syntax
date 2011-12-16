" Vim syntax file
" Language:	Gentoo Common Rules
" Author:	Ciaran McCreesh <ciaranm@gentoo.org>
" Copyright:	Copyright (c) 2004-2005 Ciaran McCreesh
" Licence:	You may redistribute this under the same terms as Vim itself

if &compatible || v:version < 603
    finish
endif

syn region GentooHeaderBlock start=/\%^\(#\)\@=/ end=/^$/ contains=GentooHeader
syn region GentooHeader contained start=/^#/ end=/$/ contains=GentooHeaderCVSVar
syn region GentooHeaderCVSVar contained start=/\$\S\+:/ end=/\$/

syn match  GentooBug contained /\(\([gG]entoo \|[dD]ebian \|[sS]ource[Ff]orge \)\?[Bb]ug \(#\s*\)\?\|#\)\d\{1,\}/

hi def link GentooHeader                 Comment
hi def link GentooHeaderCVSVar           PreProc
hi def link GentooBug                    Underlined

