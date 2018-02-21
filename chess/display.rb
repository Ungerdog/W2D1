require "colorize"
require_relative "cursor.rb"
require_relative "board.rb"
require 'byebug'


class Display

  attr_reader :board, :cursor

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def render
      board.grid.each_index do |row_idx|
        arr = board.grid[row_idx].each_with_index.map do |el, col|
          if el.nil?
            if [row_idx, col] == cursor.cursor_pos
              "_".colorize(:blue)
            else
              el.to_s
            end
          elsif cursor.cursor_pos == el.pos
            el.to_s.colorize(:blue)
          else
            el.to_s
          end
        end
        puts arr.join(" ")
      end
    end

  # def play
  #
  # end
end

board = Board.new
# p board
display = Display.new(board)
display.render
