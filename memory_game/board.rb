require_relative "./card.rb"

class Board
    attr_reader :grid
    def initialize(length)
        @grid = Array.new(length) { Array.new(length)  }
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
        while i < alpha.length
            alpha[i] = Card.new(i)
            alpha[i + 1] = Card.new(i)
            face_value_pairs.push(alpha[i], alpha[i + 1])
            i += 2
        end

        face_value_pairs
    end
    
    # populate randomly each spot with these instances

    def populate

    end
end