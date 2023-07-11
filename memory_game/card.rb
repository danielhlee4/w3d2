class Card
    attr_reader :face_value
    def initialize(face_value)
        @face_value = face_value
        @face_up = false
    end

    def switch_orientation
        if @face_up == false
            @face_up = true
        else
            @face_up = false
        end
    end
end