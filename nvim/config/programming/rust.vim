Plug 'rust-lang/rust.vim'

let g:rustfmt_autosave = 1



Plug 'ncm2/ncm2-racer'


" Language Server
if executable('rls')
	au User lsp_setup call lsp#register_server({
				\ 'name': 'rls',
				\ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rls']},
				\ 'whitelist': ['rust'],
				\ })
endif




if executable('magic-term.sh')
  map ,r :! magic-term.sh run<CR><CR>
  map ,t :! magic-term.sh test<CR><CR>
endif
