
function! test#javascript#jest#test_file(file) abort
  return a:file =~? '\v^spec/.*spec\.(jsx)$'
endfunction

function! test#javascript#jest#build_position(type, position) abort
  if a:type == 'nearest' || a:type == 'file'
    return [a:position['file']]
  else
    return []
  endif
endfunction

function! test#javascript#jest#build_args(args) abort
  let args = a:args

  if empty(filter(copy(a:args), 'test#base#file_exists(v:val)'))
    let args = args + ['spec/']
  endif
  " if !empty(glob('spec/**/*.coffee'))
  "   let args = ['--coffee'] + args
  " endif

  return args
endfunction

function! test#javascript#jest#executable() abort
  return 'node ./node_modules/jest-cli/bin/jest.js --testPathPattern'
endfunction
