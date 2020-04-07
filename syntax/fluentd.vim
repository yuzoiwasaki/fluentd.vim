" Vim syntax file
" Language: Fluentd configuration
" Maintainer: Yuzo Iwasaki <yuzoiwasaki0929@gmail.com>
" Last Change: Apr 7, 2020

if exists("b:current_syntax")
  finish
endif

syn match FluentdDirective "<\/*\(source\|parse\|label\|match\|buffer\|format\)[^>]*>"
syn match FluentdDirective /@include/

syn match CommonPluginParameter /\(@type\|@label\)/
syn keyword CommonPluginParameter pos_file path tag expression
syn keyword CommonPluginParameter format format_firstline format1
syn keyword CommonPluginParameter s3_bucket s3_region s3_object_key_format store_as
syn keyword CommonPluginParameter timekey timekey_wait include_time_key

hi link FluentdDirective Label
hi link CommonPluginParameter Keyword

let b:current_syntax = "fluentd"
