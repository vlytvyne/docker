" включить синтаксис
syntax on
" включить нумерацию строк
set nu

" размер таба
set tabstop=4
" размер отступа для auto C-style indentation
set shiftwidth=4
" не разворачивать табы в пробелы
set noexpandtab

" отображать номер колонки на которой находиться курсор
set statusline+=Column:\ %c

" подсветить лишние пробелы ( '|' (экран) - или, Error - цветовая схема, '+'
" (экран) один или больше знак за которым стоит, в данном случае пробел)
match Error /  \+\| \n\|\t\n/

" сохранять бэкапы в указаную папку
set backup
set backupdir=~/.vim/backup


function! MakeHeader()
	let file_name = expand('%:t')
	let cr_date = system('date +"%Y/%m/%d %H:%M:%S" | tr -d ''\n''')
	let g:header_present = exists('g:header_present') ? 0 : 1

	if g:header_present
		call append(0, "/* ************************************************************************** */")
		call append(0, "/*                                                                            */")
		call append(0, printf("/*   Updated: %s by %-17s###   ########.fr       */", cr_date, $USER))
		call append(0, printf("/*   Created: %s by %-18s#+#    #+#             */", cr_date, $USER))
		call append(0, "/*                                                +#+#+#+#+#+   +#+           */")
		call append(0, printf("/*   By: %-8s %-34s+#+  +:+       +#+        */", $USER, printf("<%s>", $MAIL)))
		call append(0, "/*                                                    +:+ +:+         +:+     */")
		call append(0, printf("/*   %-51s:+:      :+:    :+:   */", file_name))
		call append(0, "/*                                                        :::      ::::::::   */")
		call append(0, "/*                                                                            */")
		call append(0, "/* ************************************************************************** */")
	endif
endfunction

:map <silent> <C-c><C-h> :call MakeHeader()<CR>

command W w
command Q q
command Wq wq
command WQ wq
