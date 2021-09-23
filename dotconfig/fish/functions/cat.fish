function cat --wraps='bat --paging=never -p' --description 'alias cat=bat --paging=never -p'
  bat --paging=never -p $argv; 
end
