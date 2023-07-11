require_relative "./card.rb"
require "byebug"

class Board
    attr_reader :grid 
    def initialize
        @grid = Array.new(4) { Array.new(4)  }
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, face_value)
        row, col = pos
        @grid[row][col] = face_value
    end

    # generate 16 card instances, which consist of 8 face-value pairs
    def generate_cards
        face_value_pairs = []
        
        alpha = ("a".."p").to_a
        i = 0
        face_value_counter = 1
        while i < alpha.length
            alpha[i] = Card.new(face_value_counter)
            alpha[i + 1] = Card.new(face_value_counter)
            face_value_pairs.push(alpha[i], alpha[i + 1])
            i += 2
            face_value_counter += 1
            # debugger
        end

        face_value_pairs
    end
    
    # populate randomly each spot with these instances
#populate 16 spaces, randomly from face value pairs
#make face value pairs into instance variable. maybe.
    def empty?
        @grid.each do |row|
            row.each do |spot|
                return true if spot == nil
            end
        end
        return false
    end

    #every time we pop, one element from cards will disappear
    def populate
        cards = self.generate_cards

        while cards.length != 0
            
            rand_row = rand(0...@grid.length)
            rand_col = rand(0...@grid.length)
            if @grid[rand_row][rand_col] == nil 
                @grid[rand_row][rand_col] = cards.pop.face_value
            end
            # debugger
        end
        p 'board was populated'
    end

    
end

b = Board.new
b.generate_cards