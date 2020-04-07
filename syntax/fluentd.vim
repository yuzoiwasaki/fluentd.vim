" Vim syntax file
" Language: Fluentd configuration
" Maintainer: Yuzo Iwasaki <yuzoiwasaki0929@gmail.com>
" Last Change: Apr 7, 2020

if exists("b:current_syntax")
  finish
endif

syn match FluentdDirective "<\/*\(source\|parse\|label\|match\|buffer\|format\)[^>]*>"
syn match FluentdDirective /@include/

hi link FluentdDirective Label

let b:current_syntax = "fluentd"
