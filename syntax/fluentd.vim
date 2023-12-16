" Vim syntax file
" Language: Fluentd configuration
" Maintainer: Yuzo Iwasaki <yuzoiwasaki0929@gmail.com>
" Last Change: December 16, 2023

if exists("b:current_syntax")
  finish
endif

syn match FluentdComment /#.*/

syn match FluentdDirective "<\/*\(source\|parse\|label\|match\|buffer\|format\|store\)[^>]*>"
syn match FluentdDirective /@include/

syn match CommonPluginParameter /\(@type\|@label\)/
syn keyword CommonPluginParameter pos_file path tag expression
syn keyword CommonPluginParameter format format_firstline format1
syn keyword CommonPluginParameter s3_bucket s3_region s3_object_key_format store_as
syn keyword CommonPluginParameter timekey timekey_wait include_time_key
syn keyword CommonPluginParameter region log_group_name auto_create_stream use_tag_as_stream
syn keyword CommonPluginParameter api_key include_tag service dd_source dd_tags

hi link FluentdComment Comment
hi link FluentdDirective Define
hi link CommonPluginParameter String

let b:current_syntax = "fluentd"
