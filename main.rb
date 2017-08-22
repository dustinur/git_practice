require 'colorize'

def puts_git(cmd)
  puts `git #{cmd} -h`
  menu
end

def menu
  puts 'MAIN MENU'.colorize(:cyan)
  puts '1 Enter Git Command'.colorize(:cyan)
  puts '2 Exit'.colorize(:cyan)
  choice = gets.to_i
  case choice
    when 1
      puts 'Enter a git command'.colorize(:green)
      puts_git(gets.strip)
      menu
    when 2
      exit
    else
      puts 'Inavlid Choice'.colorize(:red)
      menu
  end
end

menu
