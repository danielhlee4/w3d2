class Card
    attr_reader :face_value, :face_up
    def initialize(face_value)
        @face_value = face_value
        @face_up = false
    end

    # def switch_orientation
    #     if @face_up == false
    #         @face_up = true
    #     else
    #         @face_up = false
    #     end
    # end

    def display
        if @face_up
            return @face_value
        else
            p 'card is face-down'
        end
    end

    def hide
        if @face_up
            @face_up = false
        end
    end

    def reveal
        if !@face_up
            @face_up = true
        end
    end

    def to_s
        self.to_s
    end


end