" Vim syntax file
" Language: Fluentd configuration
" Maintainer: Yuzo Iwasaki <yuzoiwasaki0929@gmail.com>
" Last Change: Apr 6, 2020

if exists("b:current_syntax")
  finish
endif

syn keyword FluentdSection source parse label match buffer format

hi link FluentdSection Label

let b:current_syntax = "fluent"
