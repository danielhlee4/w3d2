class Card
    attr_reader :face_value
    def initialize(face_value)
        @face_value = face_value
        @face_up = false
    end

    
end