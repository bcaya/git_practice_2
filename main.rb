require 'colorize'
require_relative 'git'

class Main 
  include Git 


  def menu
    puts 'MAIN MENU'.colorize(:yellow)
    puts '1: Enter git command'.colorize(:gold)
    puts '2: Exit'.colorize(:cyan)
    choice = gets.to_i 
    case choice 
      when 1 
        puts 'Enter git command'.colorize(:red)
        puts_git(gets.strip)
        menu
      when 2 
        exit 
      else 
        puts 'Invalid choice'.colorize(:purple)
        menu 
      end 
    end 
  end 
  
  Main.menu 

