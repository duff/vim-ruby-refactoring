"
" Author: Enrique Comba Riepenhausen (@ecomba) & Paul King (@nrocy)
" Email: enrique@edendevelopment.co.uk
" Email: somecrocodile@gmail.com
"
" Acknowledgements:
" Thanks to Gary Bernhardt for the inspiration for this tool and the original
" ExtractVariable() and InlineTemp() functions.
"
" Contributions from Stuart Gale (@bishboria)
"
" Some support functions borrowed from Luc Hermitte's lh-vim library

" Load all refactoring recipes
exec 'runtime ' . expand('<sfile>:p:h') . '/refactorings/general/*.vim'

" Commands:
"
" Using a simple 'R' prefix for now
" TODO: Do we even need this prefix? How likely is it that we'll conflict?

command! RAddParameter                  call AddParameter()
command! RInlineTemp                    call InlineTemp()
command! RExtractLet                    call ExtractIntoRspecLet()
command! RConvertPostConditional        call ConvertPostConditional()

command! -range RExtractConstant        call ExtractConstant()
command! -range RExtractLocalVariable   call ExtractLocalVariable()
command! -range RRenameLocalVariable    call RenameLocalVariable()
command! -range RRenameInstanceVariable call RenameInstanceVariable()
command! -range RExtractMethod          call ExtractMethod()


