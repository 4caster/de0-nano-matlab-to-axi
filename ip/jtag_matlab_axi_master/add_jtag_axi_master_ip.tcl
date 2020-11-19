set oldpath [get_user_option -name USER_IP_SEARCH_PATHS]
puts $argv0
set path2add [file dirname $argv0]
puts $path2add
append oldpath ";"
set newpath [append oldpath $path2add]
puts $newpath
set_user_option -name USER_IP_SEARCH_PATHS $newpath

